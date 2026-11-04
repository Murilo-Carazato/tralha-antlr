import 'package:antlr/src/bottom_up/slr.dart';
import 'package:test/test.dart';

void main() {
  final model = SlrModel.tralha();

  test('gera a coleção canônica LR(0) e as tabelas SLR(1)', () {
    expect(model.states, hasLength(20));
    expect(model.transitions, hasLength(34));
    expect(model.action[0]?['ID'], 's4');
    expect(model.goTo[0]?['S'], 1);
    expect(model.action[1]?[r'$'], 'acc');
    expect(model.action[8]?['*'], 's15');
    expect(model.follow['expr'], containsAll([';', '+', ')']));
  });

  test('aceita atribuições válidas e respeita precedência', () {
    for (final source in [
      'a receba 10 + 20 * 3 ;',
      'resultado receba ( a + 2 ) * 7 ;',
      'recebax receba 1 ; outra receba recebax + 2 ;',
    ]) {
      expect(model.parse(source)['success'], isTrue, reason: source);
    }
  });

  test('rejeita entradas sintaticamente inválidas', () {
    for (final source in [
      'a receba 10 + ;',
      'a receba * 20 ;',
      'a 10 + 20 ;',
      'a receba 10 + 20',
      'a receba 1 @ 2 ;',
    ]) {
      expect(model.parse(source)['success'], isFalse, reason: source);
    }
  });

  test('não separa o prefixo receba de um identificador maior', () {
    final tokens = model.tokenize('recebax receba 1 ;');
    expect(tokens.first.terminal, 'ID');
    expect(tokens.first.value, 'recebax');
    expect(tokens[1].terminal, 'receba');
  });
}
