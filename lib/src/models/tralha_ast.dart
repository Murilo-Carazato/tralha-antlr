abstract class TralhaNode {}

class TralhaProgram extends TralhaNode {
  final List<TralhaNode> elements;
  TralhaProgram(this.elements);

  @override
  String toString() => 'Programa:\n  ' + elements.join('\n  ');
}

class TralhaImport extends TralhaNode {
  final String path;
  TralhaImport(this.path);
  @override
  String toString() => 'Import($path)';
}

class TralhaClass extends TralhaNode {
  final String name;
  final String? superclass;
  final List<String> interfaces;
  final List<TralhaMember> members;
  final List<String> modifiers;

  TralhaClass(this.name, this.superclass, this.interfaces, this.members, this.modifiers);

  @override
  String toString() => 'Classe $name (Mamata: $superclass, Bota: $interfaces, Mod: $modifiers) {\n    ' + members.join('\n    ') + '\n  }';
}

abstract class TralhaMember extends TralhaNode {}

class TralhaField extends TralhaMember {
  final String type;
  final String id;
  final TralhaExpression? initialValue;
  final List<String> modifiers;

  TralhaField(this.type, this.id, this.initialValue, this.modifiers);

  @override
  String toString() => 'Campo($modifiers $type $id = $initialValue)';
}

class TralhaMethod extends TralhaMember {
  final String? returnType;
  final String name;
  final List<Map<String, String>> params;
  final TralhaCommand? body;
  final List<String> modifiers;

  TralhaMethod(this.returnType, this.name, this.params, this.body, this.modifiers);

  @override
  String toString() => 'Metodo($modifiers $returnType $name($params) -> $body)';
}

class TralhaConstructor extends TralhaMember {
  final String name;
  final List<Map<String, String>> params;
  final TralhaCommand body;
  final List<String> modifiers;

  TralhaConstructor(this.name, this.params, this.body, this.modifiers);

  @override
  String toString() => 'Construtor($modifiers $name($params) -> $body)';
}

abstract class TralhaCommand extends TralhaNode {}

class TralhaDeclaration extends TralhaCommand {
  final String tipo;
  final String id;
  final TralhaExpression? valor;

  TralhaDeclaration(this.tipo, this.id, [this.valor]);

  @override
  String toString() => 'Declaracao($tipo $id = $valor)';
}

class TralhaAssignment extends TralhaCommand {
  final TralhaExpression target;
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

class TralhaSwitch extends TralhaCommand {
  final TralhaExpression expr;
  final List<TralhaCase> cases;
  final List<TralhaCommand>? defaultBlock;
  TralhaSwitch(this.expr, this.cases, this.defaultBlock);
  @override
  String toString() => 'Dependendo($expr) { ... }';
}

class TralhaCase extends TralhaNode {
  final TralhaExpression expr;
  final List<TralhaCommand> body;
  TralhaCase(this.expr, this.body);
}

class TralhaLoop extends TralhaCommand {
  final String type; // ateDarCerto, vaiNaFe, vaiVolta
  final TralhaExpression? condition;
  final TralhaCommand body;
  TralhaLoop(this.type, this.condition, this.body);
  @override
  String toString() => 'Loop($type: $condition) -> $body';
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
  String toString() => '{ ' + comandos.join('; ') + ' }';
}

class TralhaBreak extends TralhaCommand {
  @override
  String toString() => 'chega';
}

class TralhaContinue extends TralhaCommand {
  @override
  String toString() => 'pula';
}

class TralhaReturn extends TralhaCommand {
  final TralhaExpression? value;
  TralhaReturn(this.value);
  @override
  String toString() => 'Manda($value)';
}

class TralhaThrow extends TralhaCommand {
  final TralhaExpression value;
  TralhaThrow(this.value);
  @override
  String toString() => 'Taca($value)';
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

class TralhaThis extends TralhaExpression {
  @override
  String toString() => 'nessaBomba';
}

class TralhaSuper extends TralhaExpression {
  @override
  String toString() => 'deuErro';
}

class TralhaInstanciacao extends TralhaExpression {
  final String className;
  final List<TralhaExpression> args;
  TralhaInstanciacao(this.className, this.args);
  @override
  String toString() => 'meteUm $className($args)';
}

class TralhaArrayLiteral extends TralhaExpression {
  final List<TralhaExpression> elements;
  TralhaArrayLiteral(this.elements);
  @override
  String toString() => '[$elements]';
}

class TralhaMemberAccess extends TralhaExpression {
  final TralhaExpression object;
  final String member;
  TralhaMemberAccess(this.object, this.member);
  @override
  String toString() => '$object.$member';
}

class TralhaIndexAccess extends TralhaExpression {
  final TralhaExpression object;
  final TralhaExpression index;
  TralhaIndexAccess(this.object, this.index);
  @override
  String toString() => '$object[$index]';
}

class TralhaCall extends TralhaExpression {
  final TralhaExpression target;
  final List<TralhaExpression> args;
  TralhaCall(this.target, this.args);
  @override
  String toString() => '$target($args)';
}
