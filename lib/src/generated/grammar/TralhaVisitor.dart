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
  /// Visit a parse tree produced by [TralhaParser.program].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitProgram(ProgramContext ctx);

  /// Visit a parse tree produced by [TralhaParser.importDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitImportDeclaration(ImportDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.qualifiedName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitQualifiedName(QualifiedNameContext ctx);

  /// Visit a parse tree produced by [TralhaParser.classDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitClassDeclaration(ClassDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.extendsClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExtendsClause(ExtendsClauseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.implementsClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitImplementsClause(ImplementsClauseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.memberDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMemberDeclaration(MemberDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.fieldDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitFieldDeclaration(FieldDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.methodDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMethodDeclaration(MethodDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.constructorDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitConstructorDeclaration(ConstructorDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.modifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitModifier(ModifierContext ctx);

  /// Visit a parse tree produced by [TralhaParser.parameterList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParameterList(ParameterListContext ctx);

  /// Visit a parse tree produced by [TralhaParser.parameter].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitParameter(ParameterContext ctx);

  /// Visit a parse tree produced by [TralhaParser.block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBlock(BlockContext ctx);

  /// Visit a parse tree produced by [TralhaParser.statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitStatement(StatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.variableDeclaration].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitVariableDeclaration(VariableDeclarationContext ctx);

  /// Visit a parse tree produced by [TralhaParser.assignment].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAssignment(AssignmentContext ctx);

  /// Visit a parse tree produced by [TralhaParser.assignable].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAssignable(AssignableContext ctx);

  /// Visit a parse tree produced by [TralhaParser.memberAccess].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMemberAccess(MemberAccessContext ctx);

  /// Visit a parse tree produced by [TralhaParser.methodCall].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitMethodCall(MethodCallContext ctx);

  /// Visit a parse tree produced by [TralhaParser.argumentList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitArgumentList(ArgumentListContext ctx);

  /// Visit a parse tree produced by [TralhaParser.ifStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitIfStatement(IfStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.switchStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwitchStatement(SwitchStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.switchCase].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitSwitchCase(SwitchCaseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.defaultCase].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDefaultCase(DefaultCaseContext ctx);

  /// Visit a parse tree produced by [TralhaParser.whileStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitWhileStatement(WhileStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.doWhileStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitDoWhileStatement(DoWhileStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.forStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitForStatement(ForStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.forEachStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitForEachStatement(ForEachStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.tryStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitTryStatement(TryStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.printStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitPrintStatement(PrintStatementContext ctx);

  /// Visit a parse tree produced by [TralhaParser.expression].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitExpression(ExpressionContext ctx);

  /// Visit a parse tree produced by [TralhaParser.atom].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAtom(AtomContext ctx);

  /// Visit a parse tree produced by [TralhaParser.arrayLiteral].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitArrayLiteral(ArrayLiteralContext ctx);

  /// Visit a parse tree produced by [TralhaParser.literal].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLiteral(LiteralContext ctx);

  /// Visit a parse tree produced by [TralhaParser.type].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitType(TypeContext ctx);

  /// Visit a parse tree produced by [TralhaParser.baseType].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitBaseType(BaseTypeContext ctx);
}