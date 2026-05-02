import '../generated/grammar/TralhaBaseVisitor.dart';
import '../generated/grammar/TralhaParser.dart';
import '../models/tralha_ast.dart';

class TralhaVisitor extends TralhaBaseVisitor<TralhaNode?> {
  
  @override
  TralhaNode? visitPrograma(ProgramaContext ctx) {
    List<TralhaNode> elements = [];
    for (var child in ctx.children ?? []) {
      var node = visit(child);
      if (node != null) {
        elements.add(node);
      }
    }
    return TralhaProgram(elements);
  }

  @override
  TralhaNode? visitImport_decl(Import_declContext ctx) {
    return TralhaImport(ctx.qualified_id()?.text ?? 'unknown');
  }

  @override
  TralhaNode? visitClass_decl(Class_declContext ctx) {
    var nameNode = ctx.ID();
    if (nameNode == null) return null;
    var name = nameNode.text!;
    var superclass = ctx.mamata_clause()?.ID()?.text;
    var interfaces = ctx.bota_clause()?.IDs().map((id) => id.text!).toList() ?? [];
    var modifiers = ctx.modificadores()?.modificadors().map((m) => m.text!).toList() ?? [];
    
    List<TralhaMember> members = [];
    for (var mCtx in ctx.membros()) {
      var m = visit(mCtx);
      if (m is TralhaMember) members.add(m);
    }
    
    return TralhaClass(name, superclass, interfaces, members, modifiers);
  }

  @override
  TralhaNode? visitMembro(MembroContext ctx) {
    var mods = ctx.modificadores()?.modificadors().map((m) => m.text!).toList() ?? [];
    
    if (ctx.metodo_decl() != null) {
      var method = visit(ctx.metodo_decl()!) as TralhaMethod?;
      if (method == null) return null;
      return TralhaMethod(method.returnType, method.name, method.params, method.body, mods);
    } else if (ctx.campo_decl() != null) {
      var field = visit(ctx.campo_decl()!) as TralhaField?;
      if (field == null) return null;
      return TralhaField(field.type, field.id, field.initialValue, mods);
    } else if (ctx.construtor_decl() != null) {
      var cons = visit(ctx.construtor_decl()!) as TralhaConstructor?;
      if (cons == null) return null;
      return TralhaConstructor(cons.name, cons.params, cons.body, mods);
    }
    return null;
  }

  @override
  TralhaNode? visitCampo_decl(Campo_declContext ctx) {
    var type = ctx.tipo()?.text ?? 'unknown';
    var id = ctx.ID()?.text ?? 'unknown';
    TralhaExpression? init;
    if (ctx.expressao() != null) {
        var res = visit(ctx.expressao()!);
        if (res is TralhaExpression) init = res;
    }
    return TralhaField(type, id, init, []);
  }

  @override
  TralhaNode? visitMetodo_decl(Metodo_declContext ctx) {
    var type = ctx.tipo()?.text;
    var name = ctx.ID()?.text ?? 'unknown';
    var params = _visitParams(ctx.parametros());
    var bodyCtx = ctx.bloco();
    TralhaCommand? body;
    if (bodyCtx != null) {
        var res = visit(bodyCtx);
        if (res is TralhaCommand) body = res;
    }
    return TralhaMethod(type, name, params, body, []);
  }

  @override
  TralhaNode? visitConstrutor_decl(Construtor_declContext ctx) {
    var name = ctx.ID()?.text ?? 'unknown';
    var params = _visitParams(ctx.parametros());
    var bodyCtx = ctx.bloco();
    if (bodyCtx == null) return null;
    var body = visit(bodyCtx) as TralhaCommand?;
    return TralhaConstructor(name, params, body ?? TralhaBloco([]), []);
  }

  List<Map<String, String>> _visitParams(ParametrosContext? ctx) {
    if (ctx == null) return [];
    return ctx.parametros().map((p) => {
      'tipo': p.tipo()?.text ?? 'unknown',
      'id': p.ID()?.text ?? 'unknown'
    }).toList();
  }

  @override
  TralhaNode? visitBloco(BlocoContext ctx) {
    List<TralhaCommand> comandos = [];
    for (var cmdCtx in ctx.comandos()) {
      var cmd = visit(cmdCtx);
      if (cmd is TralhaCommand) comandos.add(cmd);
    }
    return TralhaBloco(comandos);
  }

  @override
  TralhaNode? visitComando(ComandoContext ctx) {
    if (ctx.declaracao() != null) return visit(ctx.declaracao()!);
    if (ctx.atribuicao() != null) return visit(ctx.atribuicao()!);
    if (ctx.condicional() != null) return visit(ctx.condicional()!);
    if (ctx.repeticao() != null) return visit(ctx.repeticao()!);
    if (ctx.excessao() != null) return visit(ctx.excessao()!);
    if (ctx.comando_io() != null) return visit(ctx.comando_io()!);
    if (ctx.bloco() != null) return visit(ctx.bloco()!);
    if (ctx.text.startsWith('chega')) return TralhaBreak();
    if (ctx.text.startsWith('pula')) return TralhaContinue();
    if (ctx.text.startsWith('manda')) {
        TralhaExpression? expr;
        if (ctx.expressao() != null) {
            var res = visit(ctx.expressao()!);
            if (res is TralhaExpression) expr = res;
        }
        return TralhaReturn(expr);
    }
    if (ctx.text.startsWith('taca')) {
        TralhaExpression? expr;
        if (ctx.expressao() != null) {
            var res = visit(ctx.expressao()!);
            if (res is TralhaExpression) expr = res;
        }
        return TralhaThrow(expr ?? TralhaLiteral('unknown'));
    }
    if (ctx.chamada_metodo() != null) {
        var call = visit(ctx.chamada_metodo()!);
        if (call is TralhaExpression) return TralhaIO(call);
    }
    return null;
  }

  @override
  TralhaNode? visitDeclaracao(DeclaracaoContext ctx) {
    var type = ctx.tipo()?.text ?? 'unknown';
    var id = ctx.ID()?.text ?? 'unknown';
    TralhaExpression? valor;
    if (ctx.expressao() != null) {
        var res = visit(ctx.expressao()!);
        if (res is TralhaExpression) valor = res;
    }
    return TralhaDeclaration(type, id, valor);
  }

  @override
  TralhaNode? visitCondicional(CondicionalContext ctx) {
    if (ctx.text.startsWith('dependendo')) {
        TralhaExpression? expr;
        if (ctx.expressaos().isNotEmpty) {
            var res = visit(ctx.expressaos().first);
            if (res is TralhaExpression) expr = res;
        }
        var cases = ctx.casos().map((c) => _visitCase(c)).toList();
        var def = ctx.padrao() != null ? ctx.padrao()!.comandos().map((cmd) {
            var res = visit(cmd);
            return res is TralhaCommand ? res : TralhaIO(TralhaLiteral(cmd.text));
        }).toList() : null;
        return TralhaSwitch(expr ?? TralhaLiteral('unknown'), cases, def);
    }
    TralhaExpression? cond;
    if (ctx.expressaos().isNotEmpty) {
        var res = visit(ctx.expressaos().first);
        if (res is TralhaExpression) cond = res;
    }
    var trueCmdRes = visit(ctx.comando(0)!);
    TralhaCommand trueCmd = trueCmdRes is TralhaCommand ? trueCmdRes : TralhaBloco([]);
    TralhaCommand? falseCmd;
    if (ctx.comandos().length > 1) {
        var res = visit(ctx.comandos().last);
        if (res is TralhaCommand) falseCmd = res;
    }
    return TralhaCondicional(cond ?? TralhaLiteral('unknown'), trueCmd, falseCmd);
  }

  TralhaCase _visitCase(CasoContext ctx) {
      TralhaExpression? expr;
      var exprCtx = ctx.expressao();
      if (exprCtx != null) {
          var res = visit(exprCtx);
          if (res is TralhaExpression) expr = res;
      }
      var body = ctx.comandos().map((cmd) {
          var res = visit(cmd);
          return res is TralhaCommand ? res : TralhaIO(TralhaLiteral(cmd.text));
      }).toList();
      return TralhaCase(expr ?? TralhaLiteral('unknown'), body);
  }

  @override
  TralhaNode? visitRepeticao(RepeticaoContext ctx) {
    TralhaExpression? cond;
    if (ctx.expressao() != null) {
        var res = visit(ctx.expressao()!);
        if (res is TralhaExpression) cond = res;
    }
    var bodyRes = visit(ctx.comando() ?? ctx.bloco()!);
    TralhaCommand body = bodyRes is TralhaCommand ? bodyRes : TralhaBloco([]);

    if (ctx.text.startsWith('ateDarCerto')) {
        return TralhaLoop('ateDarCerto', cond, body);
    } else if (ctx.text.startsWith('vaiNaFe')) {
        return TralhaLoop('vaiNaFe', cond, body);
    } else if (ctx.text.startsWith('vaiVolta')) {
        return TralhaLoop('vaiVolta', cond, body);
    }
    return null;
  }

  @override
  TralhaNode? visitAtribuicao(AtribuicaoContext ctx) {
    var lvalueCtx = ctx.lvalue();
    if (lvalueCtx == null) return null;
    var target = visit(lvalueCtx) as TralhaExpression?;
    if (target == null) return null;
    if (ctx.expressao() != null) {
        var res = visit(ctx.expressao()!);
        if (res is TralhaExpression) return TralhaAssignment(target, res);
    }
    return TralhaAssignment(target, TralhaLiteral(ctx.text.contains('++') ? '+1' : '-1'));
  }

  @override
  TralhaNode? visitLvalue(LvalueContext ctx) {
    if (ctx.ID() != null) return TralhaIdentifier(ctx.ID()!.text!);
    if (ctx.acesso() != null) {
        var res = visit(ctx.acesso()!);
        if (res is TralhaExpression) return res;
    }
    if (ctx.text.startsWith('nessaBomba')) {
        var idNode = ctx.ID();
        if (idNode != null) return TralhaMemberAccess(TralhaThis(), idNode.text!);
    }
    return null;
  }

  @override
  TralhaNode? visitAcesso(AcessoContext ctx) {
    if (ctx.childCount == 0) return null;
    TralhaExpression obj;
    var firstChild = ctx.getChild(0)!;
    if (firstChild.text == 'nessaBomba') obj = TralhaThis();
    else if (firstChild.text == 'deuErro') obj = TralhaSuper();
    else obj = TralhaIdentifier(firstChild.text!);

    for (int i = 1; i < ctx.childCount; i++) {
        var child = ctx.getChild(i)!;
        if (child.text == '.') {
            var next = ctx.getChild(i+1);
            if (next != null) {
                obj = TralhaMemberAccess(obj, next.text!);
                i++;
            }
        } else if (child.text == '[') {
            var next = ctx.getChild(i+1);
            if (next != null) {
                var idx = visit(next);
                if (idx is TralhaExpression) {
                    obj = TralhaIndexAccess(obj, idx);
                }
                i += 2;
            }
        }
    }
    return obj;
  }

  @override
  TralhaNode? visitChamada_metodo(Chamada_metodoContext ctx) {
    TralhaExpression? target;
    if (ctx.ID() != null) target = TralhaIdentifier(ctx.ID()!.text!);
    else if (ctx.acesso() != null) target = visit(ctx.acesso()!) as TralhaExpression?;
    else if (ctx.primary() != null) target = visit(ctx.primary()!) as TralhaExpression?;
    
    if (target == null) return null;

    List<TralhaExpression> args = [];
    if (ctx.lista_expressoes() != null) {
      args = ctx.lista_expressoes()!.expressaos().map((e) {
          var res = visit(e);
          return res is TralhaExpression ? res : TralhaLiteral(e.text);
      }).toList();
    }
    return TralhaCall(target, args);
  }

  @override
  TralhaNode? visitExpressao(ExpressaoContext ctx) {
    if (ctx.primary() != null) return visit(ctx.primary()!);
    if (ctx.childCount == 3) {
       var first = ctx.getChild(0)!;
       var second = ctx.getChild(1)!;
       if (first.text == '(') {
           var res = visit(ctx.expressao(0)!);
           return res is TralhaExpression ? res : null;
       }
       if (second.text == '.') {
           var obj = visit(ctx.expressao(0)!);
           if (obj is TralhaExpression) return TralhaMemberAccess(obj, ctx.ID()?.text ?? 'unknown');
       }
       var left = visit(ctx.expressao(0)!);
       var right = visit(ctx.getChild(2)!);
       if (left is TralhaExpression && right is TralhaExpression) {
         return TralhaBinaryExpr(left, second.text!, right);
       }
    }
    if (ctx.childCount == 4 && ctx.getChild(1)!.text == '[') {
        var obj = visit(ctx.expressao(0)!);
        var idx = visit(ctx.expressao(1)!);
        if (obj is TralhaExpression && idx is TralhaExpression) return TralhaIndexAccess(obj, idx);
    }
    if (ctx.childCount == 2 && ctx.getChild(0)!.text == '!') {
        var expr = visit(ctx.expressao(0)!);
        if (expr is TralhaExpression) return TralhaBinaryExpr(TralhaLiteral(null), '!', expr);
    }
    return super.visitExpressao(ctx);
  }

  @override
  TralhaNode? visitPrimary(PrimaryContext ctx) {
    if (ctx.ID() != null) return TralhaIdentifier(ctx.ID()!.text!);
    if (ctx.text == 'nessaBomba') return TralhaThis();
    if (ctx.text == 'deuErro') return TralhaSuper();
    if (ctx.text.startsWith('meteUm')) {
        List<TralhaExpression> args = [];
        if (ctx.lista_expressoes() != null) {
            args = ctx.lista_expressoes()!.expressaos().map((e) {
                var res = visit(e);
                return res is TralhaExpression ? res : TralhaLiteral(e.text);
            }).toList();
        }
        return TralhaInstanciacao(ctx.ID()?.text ?? 'unknown', args);
    }
    if (ctx.array_literal() != null) {
        List<TralhaExpression> elements = [];
        if (ctx.array_literal()!.lista_expressoes() != null) {
            elements = ctx.array_literal()!.lista_expressoes()!.expressaos().map((e) {
                var res = visit(e);
                return res is TralhaExpression ? res : TralhaLiteral(e.text);
            }).toList();
        }
        return TralhaArrayLiteral(elements);
    }
    if (ctx.literal() != null) return visit(ctx.literal()!);
    if (ctx.expressao() != null) return visit(ctx.expressao()!);
    return null;
  }

  @override
  TralhaNode? visitLiteral(LiteralContext ctx) {
    if (ctx.STRING_LITERAL() != null) return TralhaLiteral(ctx.STRING_LITERAL()!.text);
    if (ctx.INT_LITERAL() != null) return TralhaLiteral(int.tryParse(ctx.INT_LITERAL()?.text ?? '0') ?? 0);
    if (ctx.FLOAT_LITERAL() != null) return TralhaLiteral(ctx.FLOAT_LITERAL()!.text);
    if (ctx.DOUBLE_LITERAL() != null) return TralhaLiteral(ctx.DOUBLE_LITERAL()!.text);
    if (ctx.text == 'confia') return TralhaLiteral(true);
    if (ctx.text == 'fakeNews') return TralhaLiteral(false);
    if (ctx.text == 'oco') return TralhaLiteral(null);
    return null;
  }
}
