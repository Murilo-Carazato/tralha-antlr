import 'package:antlr4/antlr4.dart';
import '../lib/src/generated/grammar/TralhaLexer.dart';
import '../lib/src/generated/grammar/TralhaParser.dart';
import '../lib/src/visitor/tralha_visitor.dart';

void main() async {
  // Código de teste em TRALHA
  const inputCode = '''
    naoFracionado idade receba 18;
    testao nome receba "Murilo";
    bipolar podeEntrar receba fakeNews;

    sePa (idade >= 18) {
      podeEntrar receba confia;
      whatsapp("Acesso Liberado");
    } ouSeDeusQuiser {
      whatsapp("Vaza daqui");
    }
    
    // Gambiarra test
    gambiarra {
      whatsapp("Tentando fazer o pix");
    } deuPau (mutante erro) {
      whatsapp("Pix falhou");
    } fitaIsolante {
      whatsapp("Acabou");
    }
  ''';

  print('=== Código TRALHA ===');
  print(inputCode);
  print('======================\n');

  final input = InputStream.fromString(inputCode);
  final lexer = TralhaLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = TralhaParser(tokens);

  // Regra inicial
  final tree = parser.programa();

  print('=== Construindo AST ===');
  final visitor = TralhaVisitor();
  final ast = visitor.visit(tree);

  print(ast);
}
