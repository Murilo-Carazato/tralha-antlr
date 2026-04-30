abstract class TralhaNode {}

class TralhaProgram extends TralhaNode {
  final List<TralhaCommand> comandos;
  TralhaProgram(this.comandos);

  @override
  String toString() => 'Programa:\n  ' + comandos.join('\n  ');
}

abstract class TralhaCommand extends TralhaNode {}

class TralhaDeclaration extends TralhaCommand {
  final String tipo;
  final String id;
  final TralhaExpression? valor;

  TralhaDeclaration(this.tipo, this.id, [this.valor]);

  @override
  String toString() => 'Declaracao($tipo $id${valor != null ? ' = $valor' : ''})';
}

class TralhaAssignment extends TralhaCommand {
  final String target;
  final TralhaExpression valor;

  TralhaAssignment(this.target, this.valor);

  @override
  String toString() => 'Atribuicao($target receba $valor)';
}

class TralhaIO extends TralhaCommand {
  final TralhaExpression expr;
  TralhaIO(this.expr);

  @override
  String toString() => 'IO: whatsapp($expr)';
}

class TralhaCondicional extends TralhaCommand {
  final TralhaExpression condicao;
  final TralhaCommand blocoVerdadeiro;
  final TralhaCommand? blocoFalso;
  
  TralhaCondicional(this.condicao, this.blocoVerdadeiro, [this.blocoFalso]);

  @override
  String toString() => 'Condicional(sePa($condicao) -> $blocoVerdadeiro' + 
      (blocoFalso != null ? ' senao $blocoFalso)' : ')');
}

class TralhaExcessao extends TralhaCommand {
  final TralhaCommand tryBloco;
  final String catchErrorId;
  final TralhaCommand catchBloco;
  final TralhaCommand? finallyBloco;
  
  TralhaExcessao(this.tryBloco, this.catchErrorId, this.catchBloco, [this.finallyBloco]);

  @override
  String toString() => 'Excessao(gambiarra -> $tryBloco, deuPau($catchErrorId) -> $catchBloco)';
}

class TralhaBloco extends TralhaCommand {
  final List<TralhaCommand> comandos;
  TralhaBloco(this.comandos);

  @override
  String toString() => 'Bloco { ' + comandos.join('; ') + ' }';
}

abstract class TralhaExpression extends TralhaNode {}

class TralhaLiteral extends TralhaExpression {
  final dynamic valor;
  TralhaLiteral(this.valor);

  @override
  String toString() => '$valor';
}

class TralhaBinaryExpr extends TralhaExpression {
  final TralhaExpression left;
  final String op;
  final TralhaExpression right;

  TralhaBinaryExpr(this.left, this.op, this.right);

  @override
  String toString() => '($left $op $right)';
}

class TralhaIdentifier extends TralhaExpression {
  final String nome;
  TralhaIdentifier(this.nome);

  @override
  String toString() => 'Id($nome)';
}
