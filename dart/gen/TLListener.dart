// Generated from ./TL.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'TLParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [TLParser].
abstract class TLListener extends ParseTreeListener {
  /// Enter a parse tree produced by [TLParser.parse].
  /// [ctx] the parse tree
  void enterParse(ParseContext ctx);
  /// Exit a parse tree produced by [TLParser.parse].
  /// [ctx] the parse tree
  void exitParse(ParseContext ctx);

  /// Enter a parse tree produced by [TLParser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [TLParser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [TLParser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [TLParser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [TLParser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [TLParser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by the [buildInIdentifierFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterBuildInIdentifierFunctionCall(BuildInIdentifierFunctionCallContext ctx);
  /// Exit a parse tree produced by the [buildInIdentifierFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitBuildInIdentifierFunctionCall(BuildInIdentifierFunctionCallContext ctx);

  /// Enter a parse tree produced by the [identifierFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterIdentifierFunctionCall(IdentifierFunctionCallContext ctx);
  /// Exit a parse tree produced by the [identifierFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitIdentifierFunctionCall(IdentifierFunctionCallContext ctx);

  /// Enter a parse tree produced by the [printlnFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterPrintlnFunctionCall(PrintlnFunctionCallContext ctx);
  /// Exit a parse tree produced by the [printlnFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitPrintlnFunctionCall(PrintlnFunctionCallContext ctx);

  /// Enter a parse tree produced by the [printFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterPrintFunctionCall(PrintFunctionCallContext ctx);
  /// Exit a parse tree produced by the [printFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitPrintFunctionCall(PrintFunctionCallContext ctx);

  /// Enter a parse tree produced by the [assertFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterAssertFunctionCall(AssertFunctionCallContext ctx);
  /// Exit a parse tree produced by the [assertFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitAssertFunctionCall(AssertFunctionCallContext ctx);

  /// Enter a parse tree produced by the [sizeFunctionCall]
  /// labeled alternative in [file.parserName>.functionCall].
  /// [ctx] the parse tree
  void enterSizeFunctionCall(SizeFunctionCallContext ctx);
  /// Exit a parse tree produced by the [sizeFunctionCall]
  /// labeled alternative in [TLParser.functionCall].
  /// [ctx] the parse tree
  void exitSizeFunctionCall(SizeFunctionCallContext ctx);

  /// Enter a parse tree produced by [TLParser.ifStatement].
  /// [ctx] the parse tree
  void enterIfStatement(IfStatementContext ctx);
  /// Exit a parse tree produced by [TLParser.ifStatement].
  /// [ctx] the parse tree
  void exitIfStatement(IfStatementContext ctx);

  /// Enter a parse tree produced by [TLParser.ifStat].
  /// [ctx] the parse tree
  void enterIfStat(IfStatContext ctx);
  /// Exit a parse tree produced by [TLParser.ifStat].
  /// [ctx] the parse tree
  void exitIfStat(IfStatContext ctx);

  /// Enter a parse tree produced by [TLParser.elseIfStat].
  /// [ctx] the parse tree
  void enterElseIfStat(ElseIfStatContext ctx);
  /// Exit a parse tree produced by [TLParser.elseIfStat].
  /// [ctx] the parse tree
  void exitElseIfStat(ElseIfStatContext ctx);

  /// Enter a parse tree produced by [TLParser.elseStat].
  /// [ctx] the parse tree
  void enterElseStat(ElseStatContext ctx);
  /// Exit a parse tree produced by [TLParser.elseStat].
  /// [ctx] the parse tree
  void exitElseStat(ElseStatContext ctx);

  /// Enter a parse tree produced by [TLParser.functionDecl].
  /// [ctx] the parse tree
  void enterFunctionDecl(FunctionDeclContext ctx);
  /// Exit a parse tree produced by [TLParser.functionDecl].
  /// [ctx] the parse tree
  void exitFunctionDecl(FunctionDeclContext ctx);

  /// Enter a parse tree produced by [TLParser.forStatement].
  /// [ctx] the parse tree
  void enterForStatement(ForStatementContext ctx);
  /// Exit a parse tree produced by [TLParser.forStatement].
  /// [ctx] the parse tree
  void exitForStatement(ForStatementContext ctx);

  /// Enter a parse tree produced by [TLParser.whileStatement].
  /// [ctx] the parse tree
  void enterWhileStatement(WhileStatementContext ctx);
  /// Exit a parse tree produced by [TLParser.whileStatement].
  /// [ctx] the parse tree
  void exitWhileStatement(WhileStatementContext ctx);

  /// Enter a parse tree produced by [TLParser.idList].
  /// [ctx] the parse tree
  void enterIdList(IdListContext ctx);
  /// Exit a parse tree produced by [TLParser.idList].
  /// [ctx] the parse tree
  void exitIdList(IdListContext ctx);

  /// Enter a parse tree produced by [TLParser.exprList].
  /// [ctx] the parse tree
  void enterExprList(ExprListContext ctx);
  /// Exit a parse tree produced by [TLParser.exprList].
  /// [ctx] the parse tree
  void exitExprList(ExprListContext ctx);

  /// Enter a parse tree produced by the [boolExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterBoolExpression(BoolExpressionContext ctx);
  /// Exit a parse tree produced by the [boolExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitBoolExpression(BoolExpressionContext ctx);

  /// Enter a parse tree produced by the [numberExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterNumberExpression(NumberExpressionContext ctx);
  /// Exit a parse tree produced by the [numberExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitNumberExpression(NumberExpressionContext ctx);

  /// Enter a parse tree produced by the [identifierExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterIdentifierExpression(IdentifierExpressionContext ctx);
  /// Exit a parse tree produced by the [identifierExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitIdentifierExpression(IdentifierExpressionContext ctx);

  /// Enter a parse tree produced by the [notExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterNotExpression(NotExpressionContext ctx);
  /// Exit a parse tree produced by the [notExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitNotExpression(NotExpressionContext ctx);

  /// Enter a parse tree produced by the [orExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterOrExpression(OrExpressionContext ctx);
  /// Exit a parse tree produced by the [orExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitOrExpression(OrExpressionContext ctx);

  /// Enter a parse tree produced by the [unaryMinusExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterUnaryMinusExpression(UnaryMinusExpressionContext ctx);
  /// Exit a parse tree produced by the [unaryMinusExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitUnaryMinusExpression(UnaryMinusExpressionContext ctx);

  /// Enter a parse tree produced by the [powerExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterPowerExpression(PowerExpressionContext ctx);
  /// Exit a parse tree produced by the [powerExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitPowerExpression(PowerExpressionContext ctx);

  /// Enter a parse tree produced by the [eqExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterEqExpression(EqExpressionContext ctx);
  /// Exit a parse tree produced by the [eqExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitEqExpression(EqExpressionContext ctx);

  /// Enter a parse tree produced by the [andExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterAndExpression(AndExpressionContext ctx);
  /// Exit a parse tree produced by the [andExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitAndExpression(AndExpressionContext ctx);

  /// Enter a parse tree produced by the [inExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterInExpression(InExpressionContext ctx);
  /// Exit a parse tree produced by the [inExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitInExpression(InExpressionContext ctx);

  /// Enter a parse tree produced by the [stringExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterStringExpression(StringExpressionContext ctx);
  /// Exit a parse tree produced by the [stringExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitStringExpression(StringExpressionContext ctx);

  /// Enter a parse tree produced by the [expressionExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterExpressionExpression(ExpressionExpressionContext ctx);
  /// Exit a parse tree produced by the [expressionExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitExpressionExpression(ExpressionExpressionContext ctx);

  /// Enter a parse tree produced by the [addExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterAddExpression(AddExpressionContext ctx);
  /// Exit a parse tree produced by the [addExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitAddExpression(AddExpressionContext ctx);

  /// Enter a parse tree produced by the [compExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterCompExpression(CompExpressionContext ctx);
  /// Exit a parse tree produced by the [compExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitCompExpression(CompExpressionContext ctx);

  /// Enter a parse tree produced by the [nullExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterNullExpression(NullExpressionContext ctx);
  /// Exit a parse tree produced by the [nullExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitNullExpression(NullExpressionContext ctx);

  /// Enter a parse tree produced by the [functionCallExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterFunctionCallExpression(FunctionCallExpressionContext ctx);
  /// Exit a parse tree produced by the [functionCallExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitFunctionCallExpression(FunctionCallExpressionContext ctx);

  /// Enter a parse tree produced by the [multExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterMultExpression(MultExpressionContext ctx);
  /// Exit a parse tree produced by the [multExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitMultExpression(MultExpressionContext ctx);

  /// Enter a parse tree produced by the [listExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterListExpression(ListExpressionContext ctx);
  /// Exit a parse tree produced by the [listExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitListExpression(ListExpressionContext ctx);

  /// Enter a parse tree produced by the [ternaryExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterTernaryExpression(TernaryExpressionContext ctx);
  /// Exit a parse tree produced by the [ternaryExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitTernaryExpression(TernaryExpressionContext ctx);

  /// Enter a parse tree produced by the [inputExpression]
  /// labeled alternative in [file.parserName>.expression].
  /// [ctx] the parse tree
  void enterInputExpression(InputExpressionContext ctx);
  /// Exit a parse tree produced by the [inputExpression]
  /// labeled alternative in [TLParser.expression].
  /// [ctx] the parse tree
  void exitInputExpression(InputExpressionContext ctx);

  /// Enter a parse tree produced by [TLParser.list].
  /// [ctx] the parse tree
  void enterList(ListContext ctx);
  /// Exit a parse tree produced by [TLParser.list].
  /// [ctx] the parse tree
  void exitList(ListContext ctx);

  /// Enter a parse tree produced by [TLParser.indexes].
  /// [ctx] the parse tree
  void enterIndexes(IndexesContext ctx);
  /// Exit a parse tree produced by [TLParser.indexes].
  /// [ctx] the parse tree
  void exitIndexes(IndexesContext ctx);
}