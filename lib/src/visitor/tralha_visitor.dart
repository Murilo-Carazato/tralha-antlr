import '../generated/grammar/TralhaBaseVisitor.dart';
import '../generated/grammar/TralhaParser.dart';
import '../models/tralha_ast.dart';

class TralhaVisitor extends TralhaBaseVisitor<TralhaNode?> {
  
  @override
  TralhaNode? visitPrograma(ProgramaContext ctx) {
    List<TralhaCommand> comandos = [];
    for (var cmdCtx in ctx.comandos()) {
      var cmd = visit(cmdCtx);
      if (cmd is TralhaCommand) {
        comandos.add(cmd);
      }
    }
    return TralhaProgram(comandos);
  }

  @override
  TralhaNode? visitComando(ComandoContext ctx) {
    if (ctx.declaracao() != null) return visit(ctx.declaracao()!);
    if (ctx.atribuicao() != null) return visit(ctx.atribuicao()!);
    if (ctx.condicional() != null) return visit(ctx.condicional()!);
    if (ctx.excessao() != null) return visit(ctx.excessao()!);
    if (ctx.comando_io() != null) return visit(ctx.comando_io()!);
    if (ctx.bloco() != null) return visit(ctx.bloco()!);
    return super.visitComando(ctx);
  }

  @override
  TralhaNode? visitBloco(BlocoContext ctx) {
    List<TralhaCommand> comandos = [];
    for (var cmdCtx in ctx.comandos()) {
      var cmd = visit(cmdCtx);
      if (cmd is TralhaCommand) {
        comandos.add(cmd);
      }
    }
    return TralhaBloco(comandos);
  }

  @override
  TralhaNode? visitCondicional(CondicionalContext ctx) {
    if (ctx.text.startsWith('sePa')) {
      var condicao = visit(ctx.expressao(0)!) as TralhaExpression;
      var blocoVerdadeiro = visit(ctx.comando(0)!) as TralhaCommand;
      
      TralhaCommand? blocoFalso;
      if (ctx.comandos().length > 1) { // Has else
         blocoFalso = visit(ctx.comando(ctx.comandos().length - 1)!) as TralhaCommand;
      }
      return TralhaCondicional(condicao, blocoVerdadeiro, blocoFalso);
    }
    return super.visitCondicional(ctx);
  }

  @override
  TralhaNode? visitExcessao(ExcessaoContext ctx) {
    var tryBloco = visit(ctx.bloco(0)!) as TralhaCommand;
    var catchErrorId = ctx.ID()!.text!;
    var catchBloco = visit(ctx.bloco(1)!) as TralhaCommand;
    
    TralhaCommand? finallyBloco;
    if (ctx.blocos().length > 2) {
      finallyBloco = visit(ctx.bloco(2)!) as TralhaCommand;
    }
    
    return TralhaExcessao(tryBloco, catchErrorId, catchBloco, finallyBloco);
  }

  @override
  TralhaNode? visitDeclaracao(DeclaracaoContext ctx) {
    var tipo = ctx.tipo()!.text!;
    var id = ctx.ID()!.text!;
    
    TralhaExpression? valor;
    if (ctx.expressao() != null) {
      valor = visit(ctx.expressao()!) as TralhaExpression?;
    }
    
    return TralhaDeclaration(tipo, id, valor);
  }

  @override
  TralhaNode? visitAtribuicao(AtribuicaoContext ctx) {
    var target = ctx.ID()?.text ?? ctx.acesso()?.text ?? 'unknown';
    
    TralhaExpression valor;
    if (ctx.expressao() != null) {
      valor = visit(ctx.expressao()!) as TralhaExpression;
    } else {
       valor = TralhaLiteral(ctx.text.contains('++') ? '+1' : '-1');
    }
    
    return TralhaAssignment(target, valor);
  }

  @override
  TralhaNode? visitComando_io(Comando_ioContext ctx) {
    var expr = visit(ctx.expressao()!) as TralhaExpression;
    return TralhaIO(expr);
  }

  @override
  TralhaNode? visitExpressao(ExpressaoContext ctx) {
    if (ctx.childCount == 3 && ctx.getChild(1)!.text != null) {
      if (ctx.getChild(0)!.text == '(') {
        return visit(ctx.expressao(0)!);
      }
      var leftNode = visit(ctx.getChild(0)!);
      var rightNode = visit(ctx.getChild(2)!);
      
      if (leftNode is TralhaExpression && rightNode is TralhaExpression) {
        var op = ctx.getChild(1)!.text!;
        return TralhaBinaryExpr(leftNode, op, rightNode);
      }
    }
    if (ctx.termo() != null) {
      return visit(ctx.termo()!);
    }
    return super.visitExpressao(ctx);
  }

  @override
  TralhaNode? visitTermo(TermoContext ctx) {
    if (ctx.ID() != null) return TralhaIdentifier(ctx.ID()!.text!);
    if (ctx.STRING_LITERAL() != null) return TralhaLiteral(ctx.STRING_LITERAL()!.text);
    if (ctx.INT_LITERAL() != null) return TralhaLiteral(int.parse(ctx.INT_LITERAL()!.text!));
    if (ctx.FLOAT_LITERAL() != null) {
      return TralhaLiteral(double.parse(ctx.FLOAT_LITERAL()!.text!.replaceAll('f', '')));
    }
    if (ctx.DOUBLE_LITERAL() != null) return TralhaLiteral(double.parse(ctx.DOUBLE_LITERAL()!.text!));
    if (ctx.text == 'confia') return TralhaLiteral(true);
    if (ctx.text == 'fakeNews') return TralhaLiteral(false);
    if (ctx.text == 'oco') return TralhaLiteral(null);
    return super.visitTermo(ctx);
  }
}
