// Generated from Tralha.g4 by ANTLR 4.13.2
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
  T? visitProgram(ProgramContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitImportDeclaration(ImportDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitQualifiedName(QualifiedNameContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitClassDeclaration(ClassDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitExtendsClause(ExtendsClauseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitImplementsClause(ImplementsClauseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMemberDeclaration(MemberDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitFieldDeclaration(FieldDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMethodDeclaration(MethodDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitConstructorDeclaration(ConstructorDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitModifier(ModifierContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParameterList(ParameterListContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitParameter(ParameterContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBlock(BlockContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitStatement(StatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitVariableDeclaration(VariableDeclarationContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAssignment(AssignmentContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAssignable(AssignableContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMemberAccess(MemberAccessContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitMethodCall(MethodCallContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitArgumentList(ArgumentListContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitIfStatement(IfStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitSwitchStatement(SwitchStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitSwitchCase(SwitchCaseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitDefaultCase(DefaultCaseContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitWhileStatement(WhileStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitDoWhileStatement(DoWhileStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitForStatement(ForStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitForEachStatement(ForEachStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitTryStatement(TryStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitPrintStatement(PrintStatementContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitExpression(ExpressionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAtom(AtomContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitArrayLiteral(ArrayLiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLiteral(LiteralContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitType(TypeContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitBaseType(BaseTypeContext ctx) => visitChildren(ctx);
}