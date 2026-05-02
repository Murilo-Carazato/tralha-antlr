// Generated from grammar/Tralha.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TralhaParser.dart';
import 'TralhaVisitor.dart';

/// This class provides an empty implementation of [TralhaVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class TralhaBaseVisitor<T> extends ParseTreeVisitor<T> implements TralhaVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPrograma(ProgramaContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitImport_decl(Import_declContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitQualified_id(Qualified_idContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitClass_decl(Class_declContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMamata_clause(Mamata_clauseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBota_clause(Bota_clauseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMembro(MembroContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitCampo_decl(Campo_declContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMetodo_decl(Metodo_declContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitConstrutor_decl(Construtor_declContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParametros(ParametrosContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParametro(ParametroContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitModificadores(ModificadoresContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitModificador(ModificadorContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBloco(BlocoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitComando(ComandoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitDeclaracao(DeclaracaoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAtribuicao(AtribuicaoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLvalue(LvalueContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAcesso(AcessoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitChamada_metodo(Chamada_metodoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLista_expressoes(Lista_expressoesContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitCondicional(CondicionalContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitCaso(CasoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPadrao(PadraoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitRepeticao(RepeticaoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitExcessao(ExcessaoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitComando_io(Comando_ioContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitExpressao(ExpressaoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPrimary(PrimaryContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitArray_literal(Array_literalContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLiteral(LiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitTipo(TipoContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitTipo_base(Tipo_baseContext ctx) => visitChildren(ctx);
}