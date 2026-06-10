// Generated from Tralha.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TralhaParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [TralhaParser].
abstract class TralhaListener extends ParseTreeListener {
  /// Enter a parse tree produced by [TralhaParser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [TralhaParser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [TralhaParser.importDeclaration].
  /// [ctx] the parse tree
  void enterImportDeclaration(ImportDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.importDeclaration].
  /// [ctx] the parse tree
  void exitImportDeclaration(ImportDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.qualifiedName].
  /// [ctx] the parse tree
  void enterQualifiedName(QualifiedNameContext ctx);
  /// Exit a parse tree produced by [TralhaParser.qualifiedName].
  /// [ctx] the parse tree
  void exitQualifiedName(QualifiedNameContext ctx);

  /// Enter a parse tree produced by [TralhaParser.classDeclaration].
  /// [ctx] the parse tree
  void enterClassDeclaration(ClassDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.classDeclaration].
  /// [ctx] the parse tree
  void exitClassDeclaration(ClassDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.extendsClause].
  /// [ctx] the parse tree
  void enterExtendsClause(ExtendsClauseContext ctx);
  /// Exit a parse tree produced by [TralhaParser.extendsClause].
  /// [ctx] the parse tree
  void exitExtendsClause(ExtendsClauseContext ctx);

  /// Enter a parse tree produced by [TralhaParser.implementsClause].
  /// [ctx] the parse tree
  void enterImplementsClause(ImplementsClauseContext ctx);
  /// Exit a parse tree produced by [TralhaParser.implementsClause].
  /// [ctx] the parse tree
  void exitImplementsClause(ImplementsClauseContext ctx);

  /// Enter a parse tree produced by [TralhaParser.memberDeclaration].
  /// [ctx] the parse tree
  void enterMemberDeclaration(MemberDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.memberDeclaration].
  /// [ctx] the parse tree
  void exitMemberDeclaration(MemberDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.fieldDeclaration].
  /// [ctx] the parse tree
  void enterFieldDeclaration(FieldDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.fieldDeclaration].
  /// [ctx] the parse tree
  void exitFieldDeclaration(FieldDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.methodDeclaration].
  /// [ctx] the parse tree
  void enterMethodDeclaration(MethodDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.methodDeclaration].
  /// [ctx] the parse tree
  void exitMethodDeclaration(MethodDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.constructorDeclaration].
  /// [ctx] the parse tree
  void enterConstructorDeclaration(ConstructorDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.constructorDeclaration].
  /// [ctx] the parse tree
  void exitConstructorDeclaration(ConstructorDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.modifier].
  /// [ctx] the parse tree
  void enterModifier(ModifierContext ctx);
  /// Exit a parse tree produced by [TralhaParser.modifier].
  /// [ctx] the parse tree
  void exitModifier(ModifierContext ctx);

  /// Enter a parse tree produced by [TralhaParser.parameterList].
  /// [ctx] the parse tree
  void enterParameterList(ParameterListContext ctx);
  /// Exit a parse tree produced by [TralhaParser.parameterList].
  /// [ctx] the parse tree
  void exitParameterList(ParameterListContext ctx);

  /// Enter a parse tree produced by [TralhaParser.parameter].
  /// [ctx] the parse tree
  void enterParameter(ParameterContext ctx);
  /// Exit a parse tree produced by [TralhaParser.parameter].
  /// [ctx] the parse tree
  void exitParameter(ParameterContext ctx);

  /// Enter a parse tree produced by [TralhaParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [TralhaParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [TralhaParser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.variableDeclaration].
  /// [ctx] the parse tree
  void enterVariableDeclaration(VariableDeclarationContext ctx);
  /// Exit a parse tree produced by [TralhaParser.variableDeclaration].
  /// [ctx] the parse tree
  void exitVariableDeclaration(VariableDeclarationContext ctx);

  /// Enter a parse tree produced by [TralhaParser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [TralhaParser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [TralhaParser.assignable].
  /// [ctx] the parse tree
  void enterAssignable(AssignableContext ctx);
  /// Exit a parse tree produced by [TralhaParser.assignable].
  /// [ctx] the parse tree
  void exitAssignable(AssignableContext ctx);

  /// Enter a parse tree produced by [TralhaParser.memberAccess].
  /// [ctx] the parse tree
  void enterMemberAccess(MemberAccessContext ctx);
  /// Exit a parse tree produced by [TralhaParser.memberAccess].
  /// [ctx] the parse tree
  void exitMemberAccess(MemberAccessContext ctx);

  /// Enter a parse tree produced by [TralhaParser.methodCall].
  /// [ctx] the parse tree
  void enterMethodCall(MethodCallContext ctx);
  /// Exit a parse tree produced by [TralhaParser.methodCall].
  /// [ctx] the parse tree
  void exitMethodCall(MethodCallContext ctx);

  /// Enter a parse tree produced by [TralhaParser.argumentList].
  /// [ctx] the parse tree
  void enterArgumentList(ArgumentListContext ctx);
  /// Exit a parse tree produced by [TralhaParser.argumentList].
  /// [ctx] the parse tree
  void exitArgumentList(ArgumentListContext ctx);

  /// Enter a parse tree produced by [TralhaParser.ifStatement].
  /// [ctx] the parse tree
  void enterIfStatement(IfStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.ifStatement].
  /// [ctx] the parse tree
  void exitIfStatement(IfStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.switchStatement].
  /// [ctx] the parse tree
  void enterSwitchStatement(SwitchStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.switchStatement].
  /// [ctx] the parse tree
  void exitSwitchStatement(SwitchStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.switchCase].
  /// [ctx] the parse tree
  void enterSwitchCase(SwitchCaseContext ctx);
  /// Exit a parse tree produced by [TralhaParser.switchCase].
  /// [ctx] the parse tree
  void exitSwitchCase(SwitchCaseContext ctx);

  /// Enter a parse tree produced by [TralhaParser.defaultCase].
  /// [ctx] the parse tree
  void enterDefaultCase(DefaultCaseContext ctx);
  /// Exit a parse tree produced by [TralhaParser.defaultCase].
  /// [ctx] the parse tree
  void exitDefaultCase(DefaultCaseContext ctx);

  /// Enter a parse tree produced by [TralhaParser.whileStatement].
  /// [ctx] the parse tree
  void enterWhileStatement(WhileStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.whileStatement].
  /// [ctx] the parse tree
  void exitWhileStatement(WhileStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.doWhileStatement].
  /// [ctx] the parse tree
  void enterDoWhileStatement(DoWhileStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.doWhileStatement].
  /// [ctx] the parse tree
  void exitDoWhileStatement(DoWhileStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.forStatement].
  /// [ctx] the parse tree
  void enterForStatement(ForStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.forStatement].
  /// [ctx] the parse tree
  void exitForStatement(ForStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.forEachStatement].
  /// [ctx] the parse tree
  void enterForEachStatement(ForEachStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.forEachStatement].
  /// [ctx] the parse tree
  void exitForEachStatement(ForEachStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.tryStatement].
  /// [ctx] the parse tree
  void enterTryStatement(TryStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.tryStatement].
  /// [ctx] the parse tree
  void exitTryStatement(TryStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.printStatement].
  /// [ctx] the parse tree
  void enterPrintStatement(PrintStatementContext ctx);
  /// Exit a parse tree produced by [TralhaParser.printStatement].
  /// [ctx] the parse tree
  void exitPrintStatement(PrintStatementContext ctx);

  /// Enter a parse tree produced by [TralhaParser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);
  /// Exit a parse tree produced by [TralhaParser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [TralhaParser.atom].
  /// [ctx] the parse tree
  void enterAtom(AtomContext ctx);
  /// Exit a parse tree produced by [TralhaParser.atom].
  /// [ctx] the parse tree
  void exitAtom(AtomContext ctx);

  /// Enter a parse tree produced by [TralhaParser.arrayLiteral].
  /// [ctx] the parse tree
  void enterArrayLiteral(ArrayLiteralContext ctx);
  /// Exit a parse tree produced by [TralhaParser.arrayLiteral].
  /// [ctx] the parse tree
  void exitArrayLiteral(ArrayLiteralContext ctx);

  /// Enter a parse tree produced by [TralhaParser.literal].
  /// [ctx] the parse tree
  void enterLiteral(LiteralContext ctx);
  /// Exit a parse tree produced by [TralhaParser.literal].
  /// [ctx] the parse tree
  void exitLiteral(LiteralContext ctx);

  /// Enter a parse tree produced by [TralhaParser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [TralhaParser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [TralhaParser.baseType].
  /// [ctx] the parse tree
  void enterBaseType(BaseTypeContext ctx);
  /// Exit a parse tree produced by [TralhaParser.baseType].
  /// [ctx] the parse tree
  void exitBaseType(BaseTypeContext ctx);
}