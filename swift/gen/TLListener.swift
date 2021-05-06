// Generated from ./TL.g4 by ANTLR 4.9.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link TLParser}.
 */
public protocol TLListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link TLParser#parse}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParse(_ ctx: TLParser.ParseContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#parse}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParse(_ ctx: TLParser.ParseContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock(_ ctx: TLParser.BlockContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock(_ ctx: TLParser.BlockContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: TLParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: TLParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#assignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignment(_ ctx: TLParser.AssignmentContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#assignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignment(_ ctx: TLParser.AssignmentContext)
	/**
	 * Enter a parse tree produced by the {@code buildInIdentifierFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBuildInIdentifierFunctionCall(_ ctx: TLParser.BuildInIdentifierFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code buildInIdentifierFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBuildInIdentifierFunctionCall(_ ctx: TLParser.BuildInIdentifierFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code identifierFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifierFunctionCall(_ ctx: TLParser.IdentifierFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code identifierFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifierFunctionCall(_ ctx: TLParser.IdentifierFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code printlnFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrintlnFunctionCall(_ ctx: TLParser.PrintlnFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code printlnFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrintlnFunctionCall(_ ctx: TLParser.PrintlnFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code printFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrintFunctionCall(_ ctx: TLParser.PrintFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code printFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrintFunctionCall(_ ctx: TLParser.PrintFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code assertFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssertFunctionCall(_ ctx: TLParser.AssertFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code assertFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssertFunctionCall(_ ctx: TLParser.AssertFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code sizeFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSizeFunctionCall(_ ctx: TLParser.SizeFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code sizeFunctionCall}
	 * labeled alternative in {@link TLParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSizeFunctionCall(_ ctx: TLParser.SizeFunctionCallContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#ifStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfStatement(_ ctx: TLParser.IfStatementContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#ifStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfStatement(_ ctx: TLParser.IfStatementContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#ifStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfStat(_ ctx: TLParser.IfStatContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#ifStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfStat(_ ctx: TLParser.IfStatContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#elseIfStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElseIfStat(_ ctx: TLParser.ElseIfStatContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#elseIfStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElseIfStat(_ ctx: TLParser.ElseIfStatContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#elseStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElseStat(_ ctx: TLParser.ElseStatContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#elseStat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElseStat(_ ctx: TLParser.ElseStatContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#functionDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionDecl(_ ctx: TLParser.FunctionDeclContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#functionDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionDecl(_ ctx: TLParser.FunctionDeclContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#forStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForStatement(_ ctx: TLParser.ForStatementContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#forStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForStatement(_ ctx: TLParser.ForStatementContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#whileStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWhileStatement(_ ctx: TLParser.WhileStatementContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#whileStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWhileStatement(_ ctx: TLParser.WhileStatementContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#idList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdList(_ ctx: TLParser.IdListContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#idList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdList(_ ctx: TLParser.IdListContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#exprList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExprList(_ ctx: TLParser.ExprListContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#exprList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExprList(_ ctx: TLParser.ExprListContext)
	/**
	 * Enter a parse tree produced by the {@code boolExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBoolExpression(_ ctx: TLParser.BoolExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code boolExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBoolExpression(_ ctx: TLParser.BoolExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code numberExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumberExpression(_ ctx: TLParser.NumberExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code numberExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumberExpression(_ ctx: TLParser.NumberExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code identifierExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifierExpression(_ ctx: TLParser.IdentifierExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code identifierExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifierExpression(_ ctx: TLParser.IdentifierExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code notExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNotExpression(_ ctx: TLParser.NotExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code notExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNotExpression(_ ctx: TLParser.NotExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code orExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOrExpression(_ ctx: TLParser.OrExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code orExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOrExpression(_ ctx: TLParser.OrExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code unaryMinusExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnaryMinusExpression(_ ctx: TLParser.UnaryMinusExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code unaryMinusExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnaryMinusExpression(_ ctx: TLParser.UnaryMinusExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code powerExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPowerExpression(_ ctx: TLParser.PowerExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code powerExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPowerExpression(_ ctx: TLParser.PowerExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code eqExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEqExpression(_ ctx: TLParser.EqExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code eqExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEqExpression(_ ctx: TLParser.EqExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAndExpression(_ ctx: TLParser.AndExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code andExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAndExpression(_ ctx: TLParser.AndExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code inExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInExpression(_ ctx: TLParser.InExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code inExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInExpression(_ ctx: TLParser.InExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code stringExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringExpression(_ ctx: TLParser.StringExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code stringExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringExpression(_ ctx: TLParser.StringExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code expressionExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionExpression(_ ctx: TLParser.ExpressionExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code expressionExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionExpression(_ ctx: TLParser.ExpressionExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code addExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAddExpression(_ ctx: TLParser.AddExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code addExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAddExpression(_ ctx: TLParser.AddExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code compExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCompExpression(_ ctx: TLParser.CompExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code compExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCompExpression(_ ctx: TLParser.CompExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code nullExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNullExpression(_ ctx: TLParser.NullExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code nullExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNullExpression(_ ctx: TLParser.NullExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionCallExpression(_ ctx: TLParser.FunctionCallExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code functionCallExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionCallExpression(_ ctx: TLParser.FunctionCallExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code multExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMultExpression(_ ctx: TLParser.MultExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code multExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMultExpression(_ ctx: TLParser.MultExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code listExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListExpression(_ ctx: TLParser.ListExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code listExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListExpression(_ ctx: TLParser.ListExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code ternaryExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTernaryExpression(_ ctx: TLParser.TernaryExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code ternaryExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTernaryExpression(_ ctx: TLParser.TernaryExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code inputExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInputExpression(_ ctx: TLParser.InputExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code inputExpression}
	 * labeled alternative in {@link TLParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInputExpression(_ ctx: TLParser.InputExpressionContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterList(_ ctx: TLParser.ListContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitList(_ ctx: TLParser.ListContext)
	/**
	 * Enter a parse tree produced by {@link TLParser#indexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexes(_ ctx: TLParser.IndexesContext)
	/**
	 * Exit a parse tree produced by {@link TLParser#indexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexes(_ ctx: TLParser.IndexesContext)
}