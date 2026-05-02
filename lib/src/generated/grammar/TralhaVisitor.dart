// Generated from grammar/Tralha.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TralhaParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [TralhaParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class TralhaVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [TralhaParser.programa].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPrograma(ProgramaContext ctx);

  /// Visit a parse tree produced by [TralhaParser.import_decl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitImport_decl(Import_declContext ctx);

  /// Visit a parse tree produced by [TralhaParser.qualified_id].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitQualified_id(Qualified_idContext ctx);

  /// Visit a parse tree produced by [TralhaParser.class_decl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClass_decl(Class_declContext ctx);

  /// Visit a parse tree produced by [TralhaParser.mamata_clause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMamata_clause(Mamata_clauseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.bota_clause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBota_clause(Bota_clauseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.membro].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMembro(MembroContext ctx);

  /// Visit a parse tree produced by [TralhaParser.campo_decl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCampo_decl(Campo_declContext ctx);

  /// Visit a parse tree produced by [TralhaParser.metodo_decl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMetodo_decl(Metodo_declContext ctx);

  /// Visit a parse tree produced by [TralhaParser.construtor_decl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitConstrutor_decl(Construtor_declContext ctx);

  /// Visit a parse tree produced by [TralhaParser.parametros].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParametros(ParametrosContext ctx);

  /// Visit a parse tree produced by [TralhaParser.parametro].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParametro(ParametroContext ctx);

  /// Visit a parse tree produced by [TralhaParser.modificadores].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitModificadores(ModificadoresContext ctx);

  /// Visit a parse tree produced by [TralhaParser.modificador].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitModificador(ModificadorContext ctx);

  /// Visit a parse tree produced by [TralhaParser.bloco].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBloco(BlocoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.comando].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComando(ComandoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.declaracao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDeclaracao(DeclaracaoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.atribuicao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAtribuicao(AtribuicaoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.lvalue].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLvalue(LvalueContext ctx);

  /// Visit a parse tree produced by [TralhaParser.acesso].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAcesso(AcessoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.chamada_metodo].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitChamada_metodo(Chamada_metodoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.lista_expressoes].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLista_expressoes(Lista_expressoesContext ctx);

  /// Visit a parse tree produced by [TralhaParser.condicional].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCondicional(CondicionalContext ctx);

  /// Visit a parse tree produced by [TralhaParser.caso].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitCaso(CasoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.padrao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPadrao(PadraoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.repeticao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitRepeticao(RepeticaoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.excessao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExcessao(ExcessaoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.comando_io].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitComando_io(Comando_ioContext ctx);

  /// Visit a parse tree produced by [TralhaParser.expressao].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpressao(ExpressaoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.primary].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPrimary(PrimaryContext ctx);

  /// Visit a parse tree produced by [TralhaParser.array_literal].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitArray_literal(Array_literalContext ctx);

  /// Visit a parse tree produced by [TralhaParser.literal].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteral(LiteralContext ctx);

  /// Visit a parse tree produced by [TralhaParser.tipo].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTipo(TipoContext ctx);

  /// Visit a parse tree produced by [TralhaParser.tipo_base].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTipo_base(Tipo_baseContext ctx);
}