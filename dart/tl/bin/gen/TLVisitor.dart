// Generated from ./TL.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TLParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [TLParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class TLVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [TLParser.parse].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitParse(ParseContext ctx);

  /// Visit a parse tree produced by [TLParser.block].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBlock(BlockContext ctx);

  /// Visit a parse tree produced by [TLParser.statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStatement(StatementContext ctx);

  /// Visit a parse tree produced by [TLParser.assignment].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAssignment(AssignmentContext ctx);

  /// Visit a parse tree produced by the {@code buildInIdentifierFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBuildInIdentifierFunctionCall(BuildInIdentifierFunctionCallContext ctx);

  /// Visit a parse tree produced by the {@code identifierFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIdentifierFunctionCall(IdentifierFunctionCallContext ctx);

  /// Visit a parse tree produced by the {@code printlnFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPrintlnFunctionCall(PrintlnFunctionCallContext ctx);

  /// Visit a parse tree produced by the {@code printFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPrintFunctionCall(PrintFunctionCallContext ctx);

  /// Visit a parse tree produced by the {@code assertFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAssertFunctionCall(AssertFunctionCallContext ctx);

  /// Visit a parse tree produced by the {@code sizeFunctionCall}
  /// labeled alternative in {@link TLParser#functionCall}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitSizeFunctionCall(SizeFunctionCallContext ctx);

  /// Visit a parse tree produced by [TLParser.ifStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIfStatement(IfStatementContext ctx);

  /// Visit a parse tree produced by [TLParser.ifStat].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIfStat(IfStatContext ctx);

  /// Visit a parse tree produced by [TLParser.elseIfStat].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitElseIfStat(ElseIfStatContext ctx);

  /// Visit a parse tree produced by [TLParser.elseStat].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitElseStat(ElseStatContext ctx);

  /// Visit a parse tree produced by [TLParser.functionDecl].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionDecl(FunctionDeclContext ctx);

  /// Visit a parse tree produced by [TLParser.forStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitForStatement(ForStatementContext ctx);

  /// Visit a parse tree produced by [TLParser.whileStatement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitWhileStatement(WhileStatementContext ctx);

  /// Visit a parse tree produced by [TLParser.idList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIdList(IdListContext ctx);

  /// Visit a parse tree produced by [TLParser.exprList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExprList(ExprListContext ctx);

  /// Visit a parse tree produced by the {@code boolExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitBoolExpression(BoolExpressionContext ctx);

  /// Visit a parse tree produced by the {@code numberExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitNumberExpression(NumberExpressionContext ctx);

  /// Visit a parse tree produced by the {@code identifierExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIdentifierExpression(IdentifierExpressionContext ctx);

  /// Visit a parse tree produced by the {@code notExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitNotExpression(NotExpressionContext ctx);

  /// Visit a parse tree produced by the {@code orExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitOrExpression(OrExpressionContext ctx);

  /// Visit a parse tree produced by the {@code unaryMinusExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitUnaryMinusExpression(UnaryMinusExpressionContext ctx);

  /// Visit a parse tree produced by the {@code powerExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitPowerExpression(PowerExpressionContext ctx);

  /// Visit a parse tree produced by the {@code eqExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitEqExpression(EqExpressionContext ctx);

  /// Visit a parse tree produced by the {@code andExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAndExpression(AndExpressionContext ctx);

  /// Visit a parse tree produced by the {@code inExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitInExpression(InExpressionContext ctx);

  /// Visit a parse tree produced by the {@code stringExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitStringExpression(StringExpressionContext ctx);

  /// Visit a parse tree produced by the {@code expressionExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitExpressionExpression(ExpressionExpressionContext ctx);

  /// Visit a parse tree produced by the {@code addExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitAddExpression(AddExpressionContext ctx);

  /// Visit a parse tree produced by the {@code compExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitCompExpression(CompExpressionContext ctx);

  /// Visit a parse tree produced by the {@code nullExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitNullExpression(NullExpressionContext ctx);

  /// Visit a parse tree produced by the {@code functionCallExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitFunctionCallExpression(FunctionCallExpressionContext ctx);

  /// Visit a parse tree produced by the {@code multExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitMultExpression(MultExpressionContext ctx);

  /// Visit a parse tree produced by the {@code listExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitListExpression(ListExpressionContext ctx);

  /// Visit a parse tree produced by the {@code ternaryExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitTernaryExpression(TernaryExpressionContext ctx);

  /// Visit a parse tree produced by the {@code inputExpression}
  /// labeled alternative in {@link TLParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitInputExpression(InputExpressionContext ctx);

  /// Visit a parse tree produced by [TLParser.list].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitList(ListContext ctx);

  /// Visit a parse tree produced by [TLParser.indexes].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T visitIndexes(IndexesContext ctx);
}