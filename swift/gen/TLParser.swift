// Generated from ./TL.g4 by ANTLR 4.9.2
import Antlr4

open class TLParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = TLParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(TLParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, Println = 1, Print = 2, Input = 3, Assert = 4, Size = 5, 
                 Def = 6, If = 7, Else = 8, Return = 9, For = 10, While = 11, 
                 To = 12, Do = 13, End = 14, In = 15, Null = 16, Or = 17, 
                 And = 18, Equals = 19, NEquals = 20, GTEquals = 21, LTEquals = 22, 
                 Pow = 23, Excl = 24, GT = 25, LT = 26, Add = 27, Subtract = 28, 
                 Multiply = 29, Divide = 30, Modulus = 31, OBrace = 32, 
                 CBrace = 33, OBracket = 34, CBracket = 35, OParen = 36, 
                 CParen = 37, SColon = 38, Assign = 39, Comma = 40, QMark = 41, 
                 Colon = 42, Bool = 43, Number = 44, BuildIdentifier = 45, 
                 Identifier = 46, String = 47, Comment = 48, Space = 49
	}

	public
	static let RULE_parse = 0, RULE_block = 1, RULE_statement = 2, RULE_assignment = 3, 
            RULE_functionCall = 4, RULE_ifStatement = 5, RULE_ifStat = 6, 
            RULE_elseIfStat = 7, RULE_elseStat = 8, RULE_functionDecl = 9, 
            RULE_forStatement = 10, RULE_whileStatement = 11, RULE_idList = 12, 
            RULE_exprList = 13, RULE_expression = 14, RULE_list = 15, RULE_indexes = 16

	public
	static let ruleNames: [String] = [
		"parse", "block", "statement", "assignment", "functionCall", "ifStatement", 
		"ifStat", "elseIfStat", "elseStat", "functionDecl", "forStatement", "whileStatement", 
		"idList", "exprList", "expression", "list", "indexes"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'println'", "'print'", "'input'", "'assert'", "'size'", "'func'", 
		"'if'", "'else'", "'return'", "'for'", "'while'", "'to'", "'do'", "'end'", 
		"'in'", "'null'", "'||'", "'&&'", "'=='", "'!='", "'>='", "'<='", "'^'", 
		"'!'", "'>'", "'<'", "'+'", "'-'", "'*'", "'/'", "'%'", "'{'", "'}'", 
		"'['", "']'", "'('", "')'", "';'", "'='", "','", "'?'", "':'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "Println", "Print", "Input", "Assert", "Size", "Def", "If", "Else", 
		"Return", "For", "While", "To", "Do", "End", "In", "Null", "Or", "And", 
		"Equals", "NEquals", "GTEquals", "LTEquals", "Pow", "Excl", "GT", "LT", 
		"Add", "Subtract", "Multiply", "Divide", "Modulus", "OBrace", "CBrace", 
		"OBracket", "CBracket", "OParen", "CParen", "SColon", "Assign", "Comma", 
		"QMark", "Colon", "Bool", "Number", "BuildIdentifier", "Identifier", "String", 
		"Comment", "Space"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "TL.g4" }

	override open
	func getRuleNames() -> [String] { return TLParser.ruleNames }

	override open
	func getSerializedATN() -> String { return TLParser._serializedATN }

	override open
	func getATN() -> ATN { return TLParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return TLParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,TLParser._ATN,TLParser._decisionToDFA, TLParser._sharedContextCache)
	}


	public class ParseContext: ParserRuleContext {
			open
			func EOF() -> TerminalNode? {
				return getToken(TLParser.Tokens.EOF.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func statement() -> StatementContext? {
				return getRuleContext(StatementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_parse
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterParse(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitParse(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitParse(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitParse(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func parse() throws -> ParseContext {
        let _localctx: ParseContext = ParseContext(_ctx, getState())
		try enterRule(_localctx, 0, TLParser.RULE_parse)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(36)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,0, _ctx)) {
		 	case 1:
		 		setState(34)
		 		try block()

		 		break
		 	case 2:
		 		setState(35)
		 		try statement()

		 		break
		 	default: break
		 	}
		 	setState(38)
		 	try match(TLParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BlockContext: ParserRuleContext {
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func functionDecl() -> [FunctionDeclContext] {
				return getRuleContexts(FunctionDeclContext.self)
			}
			open
			func functionDecl(_ i: Int) -> FunctionDeclContext? {
				return getRuleContext(FunctionDeclContext.self, i)
			}
			open
			func Return() -> TerminalNode? {
				return getToken(TLParser.Tokens.Return.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func SColon() -> TerminalNode? {
				return getToken(TLParser.Tokens.SColon.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_block
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterBlock(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitBlock(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitBlock(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitBlock(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func block() throws -> BlockContext {
        let _localctx: BlockContext = BlockContext(_ctx, getState())
		try enterRule(_localctx, 2, TLParser.RULE_block)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(44)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, TLParser.Tokens.Println.rawValue,TLParser.Tokens.Print.rawValue,TLParser.Tokens.Assert.rawValue,TLParser.Tokens.Size.rawValue,TLParser.Tokens.Def.rawValue,TLParser.Tokens.If.rawValue,TLParser.Tokens.For.rawValue,TLParser.Tokens.While.rawValue,TLParser.Tokens.BuildIdentifier.rawValue,TLParser.Tokens.Identifier.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(42)
		 		try _errHandler.sync(self)
		 		switch (TLParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .Println:fallthrough
		 		case .Print:fallthrough
		 		case .Assert:fallthrough
		 		case .Size:fallthrough
		 		case .If:fallthrough
		 		case .For:fallthrough
		 		case .While:fallthrough
		 		case .BuildIdentifier:fallthrough
		 		case .Identifier:
		 			setState(40)
		 			try statement()

		 			break

		 		case .Def:
		 			setState(41)
		 			try functionDecl()

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 		setState(46)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(51)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.Return.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(47)
		 		try match(TLParser.Tokens.Return.rawValue)
		 		setState(48)
		 		try expression(0)
		 		setState(49)
		 		try match(TLParser.Tokens.SColon.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
			open
			func assignment() -> AssignmentContext? {
				return getRuleContext(AssignmentContext.self, 0)
			}
			open
			func SColon() -> TerminalNode? {
				return getToken(TLParser.Tokens.SColon.rawValue, 0)
			}
			open
			func functionCall() -> FunctionCallContext? {
				return getRuleContext(FunctionCallContext.self, 0)
			}
			open
			func ifStatement() -> IfStatementContext? {
				return getRuleContext(IfStatementContext.self, 0)
			}
			open
			func forStatement() -> ForStatementContext? {
				return getRuleContext(ForStatementContext.self, 0)
			}
			open
			func whileStatement() -> WhileStatementContext? {
				return getRuleContext(WhileStatementContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitStatement(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
        let _localctx: StatementContext = StatementContext(_ctx, getState())
		try enterRule(_localctx, 4, TLParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(62)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(53)
		 		try assignment()
		 		setState(54)
		 		try match(TLParser.Tokens.SColon.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(56)
		 		try functionCall()
		 		setState(57)
		 		try match(TLParser.Tokens.SColon.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(59)
		 		try ifStatement()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(60)
		 		try forStatement()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(61)
		 		try whileStatement()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AssignmentContext: ParserRuleContext {
			open
			func Identifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, 0)
			}
			open
			func Assign() -> TerminalNode? {
				return getToken(TLParser.Tokens.Assign.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_assignment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterAssignment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitAssignment(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitAssignment(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitAssignment(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func assignment() throws -> AssignmentContext {
        let _localctx: AssignmentContext = AssignmentContext(_ctx, getState())
		try enterRule(_localctx, 6, TLParser.RULE_assignment)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(64)
		 	try match(TLParser.Tokens.Identifier.rawValue)
		 	setState(66)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.OBracket.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(65)
		 		try indexes()

		 	}

		 	setState(68)
		 	try match(TLParser.Tokens.Assign.rawValue)
		 	setState(69)
		 	try expression(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionCallContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_functionCall
		}
	}
	public class AssertFunctionCallContext: FunctionCallContext {
			open
			func Assert() -> TerminalNode? {
				return getToken(TLParser.Tokens.Assert.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterAssertFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitAssertFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitAssertFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitAssertFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class SizeFunctionCallContext: FunctionCallContext {
			open
			func Size() -> TerminalNode? {
				return getToken(TLParser.Tokens.Size.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterSizeFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitSizeFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitSizeFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitSizeFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PrintlnFunctionCallContext: FunctionCallContext {
			open
			func Println() -> TerminalNode? {
				return getToken(TLParser.Tokens.Println.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterPrintlnFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitPrintlnFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitPrintlnFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitPrintlnFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class BuildInIdentifierFunctionCallContext: FunctionCallContext {
			open
			func BuildIdentifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.BuildIdentifier.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func exprList() -> ExprListContext? {
				return getRuleContext(ExprListContext.self, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterBuildInIdentifierFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitBuildInIdentifierFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitBuildInIdentifierFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitBuildInIdentifierFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IdentifierFunctionCallContext: FunctionCallContext {
			open
			func Identifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func exprList() -> ExprListContext? {
				return getRuleContext(ExprListContext.self, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIdentifierFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIdentifierFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIdentifierFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIdentifierFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PrintFunctionCallContext: FunctionCallContext {
			open
			func Print() -> TerminalNode? {
				return getToken(TLParser.Tokens.Print.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}

		public
		init(_ ctx: FunctionCallContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterPrintFunctionCall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitPrintFunctionCall(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitPrintFunctionCall(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitPrintFunctionCall(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionCall() throws -> FunctionCallContext {
		var _localctx: FunctionCallContext = FunctionCallContext(_ctx, getState())
		try enterRule(_localctx, 8, TLParser.RULE_functionCall)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(104)
		 	try _errHandler.sync(self)
		 	switch (TLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BuildIdentifier:
		 		_localctx =  BuildInIdentifierFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(71)
		 		try match(TLParser.Tokens.BuildIdentifier.rawValue)
		 		setState(72)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(74)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, TLParser.Tokens.Println.rawValue,TLParser.Tokens.Print.rawValue,TLParser.Tokens.Input.rawValue,TLParser.Tokens.Assert.rawValue,TLParser.Tokens.Size.rawValue,TLParser.Tokens.Null.rawValue,TLParser.Tokens.Excl.rawValue,TLParser.Tokens.Subtract.rawValue,TLParser.Tokens.OBracket.rawValue,TLParser.Tokens.OParen.rawValue,TLParser.Tokens.Bool.rawValue,TLParser.Tokens.Number.rawValue,TLParser.Tokens.BuildIdentifier.rawValue,TLParser.Tokens.Identifier.rawValue,TLParser.Tokens.String.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(73)
		 			try exprList()

		 		}

		 		setState(76)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break

		 	case .Identifier:
		 		_localctx =  IdentifierFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(77)
		 		try match(TLParser.Tokens.Identifier.rawValue)
		 		setState(78)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(80)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, TLParser.Tokens.Println.rawValue,TLParser.Tokens.Print.rawValue,TLParser.Tokens.Input.rawValue,TLParser.Tokens.Assert.rawValue,TLParser.Tokens.Size.rawValue,TLParser.Tokens.Null.rawValue,TLParser.Tokens.Excl.rawValue,TLParser.Tokens.Subtract.rawValue,TLParser.Tokens.OBracket.rawValue,TLParser.Tokens.OParen.rawValue,TLParser.Tokens.Bool.rawValue,TLParser.Tokens.Number.rawValue,TLParser.Tokens.BuildIdentifier.rawValue,TLParser.Tokens.Identifier.rawValue,TLParser.Tokens.String.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(79)
		 			try exprList()

		 		}

		 		setState(82)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break

		 	case .Println:
		 		_localctx =  PrintlnFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(83)
		 		try match(TLParser.Tokens.Println.rawValue)
		 		setState(84)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(86)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, TLParser.Tokens.Println.rawValue,TLParser.Tokens.Print.rawValue,TLParser.Tokens.Input.rawValue,TLParser.Tokens.Assert.rawValue,TLParser.Tokens.Size.rawValue,TLParser.Tokens.Null.rawValue,TLParser.Tokens.Excl.rawValue,TLParser.Tokens.Subtract.rawValue,TLParser.Tokens.OBracket.rawValue,TLParser.Tokens.OParen.rawValue,TLParser.Tokens.Bool.rawValue,TLParser.Tokens.Number.rawValue,TLParser.Tokens.BuildIdentifier.rawValue,TLParser.Tokens.Identifier.rawValue,TLParser.Tokens.String.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(85)
		 			try expression(0)

		 		}

		 		setState(88)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break

		 	case .Print:
		 		_localctx =  PrintFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(89)
		 		try match(TLParser.Tokens.Print.rawValue)
		 		setState(90)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(91)
		 		try expression(0)
		 		setState(92)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break

		 	case .Assert:
		 		_localctx =  AssertFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 5)
		 		setState(94)
		 		try match(TLParser.Tokens.Assert.rawValue)
		 		setState(95)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(96)
		 		try expression(0)
		 		setState(97)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break

		 	case .Size:
		 		_localctx =  SizeFunctionCallContext(_localctx);
		 		try enterOuterAlt(_localctx, 6)
		 		setState(99)
		 		try match(TLParser.Tokens.Size.rawValue)
		 		setState(100)
		 		try match(TLParser.Tokens.OParen.rawValue)
		 		setState(101)
		 		try expression(0)
		 		setState(102)
		 		try match(TLParser.Tokens.CParen.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IfStatementContext: ParserRuleContext {
			open
			func ifStat() -> IfStatContext? {
				return getRuleContext(IfStatContext.self, 0)
			}
			open
			func elseIfStat() -> [ElseIfStatContext] {
				return getRuleContexts(ElseIfStatContext.self)
			}
			open
			func elseIfStat(_ i: Int) -> ElseIfStatContext? {
				return getRuleContext(ElseIfStatContext.self, i)
			}
			open
			func elseStat() -> ElseStatContext? {
				return getRuleContext(ElseStatContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_ifStatement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIfStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIfStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIfStatement(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIfStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func ifStatement() throws -> IfStatementContext {
        let _localctx: IfStatementContext = IfStatementContext(_ctx, getState())
		try enterRule(_localctx, 10, TLParser.RULE_ifStatement)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(106)
		 	try ifStat()
		 	setState(110)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,10,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(107)
		 			try elseIfStat()

		 	 
		 		}
		 		setState(112)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,10,_ctx)
		 	}
		 	setState(114)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.Else.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(113)
		 		try elseStat()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IfStatContext: ParserRuleContext {
			open
			func If() -> TerminalNode? {
				return getToken(TLParser.Tokens.If.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_ifStat
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIfStat(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIfStat(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIfStat(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIfStat(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func ifStat() throws -> IfStatContext {
        let _localctx: IfStatContext = IfStatContext(_ctx, getState())
		try enterRule(_localctx, 12, TLParser.RULE_ifStat)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(116)
		 	try match(TLParser.Tokens.If.rawValue)
		 	setState(117)
		 	try expression(0)
		 	setState(118)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(119)
		 	try block()
		 	setState(120)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ElseIfStatContext: ParserRuleContext {
			open
			func Else() -> TerminalNode? {
				return getToken(TLParser.Tokens.Else.rawValue, 0)
			}
			open
			func If() -> TerminalNode? {
				return getToken(TLParser.Tokens.If.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_elseIfStat
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterElseIfStat(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitElseIfStat(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitElseIfStat(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitElseIfStat(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func elseIfStat() throws -> ElseIfStatContext {
        let _localctx: ElseIfStatContext = ElseIfStatContext(_ctx, getState())
		try enterRule(_localctx, 14, TLParser.RULE_elseIfStat)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(122)
		 	try match(TLParser.Tokens.Else.rawValue)
		 	setState(123)
		 	try match(TLParser.Tokens.If.rawValue)
		 	setState(124)
		 	try expression(0)
		 	setState(125)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(126)
		 	try block()
		 	setState(127)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ElseStatContext: ParserRuleContext {
			open
			func Else() -> TerminalNode? {
				return getToken(TLParser.Tokens.Else.rawValue, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_elseStat
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterElseStat(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitElseStat(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitElseStat(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitElseStat(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func elseStat() throws -> ElseStatContext {
        let _localctx: ElseStatContext = ElseStatContext(_ctx, getState())
		try enterRule(_localctx, 16, TLParser.RULE_elseStat)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(129)
		 	try match(TLParser.Tokens.Else.rawValue)
		 	setState(130)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(131)
		 	try block()
		 	setState(132)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionDeclContext: ParserRuleContext {
			open
			func Def() -> TerminalNode? {
				return getToken(TLParser.Tokens.Def.rawValue, 0)
			}
			open
			func Identifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
			open
			func idList() -> IdListContext? {
				return getRuleContext(IdListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_functionDecl
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterFunctionDecl(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitFunctionDecl(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitFunctionDecl(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitFunctionDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func functionDecl() throws -> FunctionDeclContext {
        let _localctx: FunctionDeclContext = FunctionDeclContext(_ctx, getState())
		try enterRule(_localctx, 18, TLParser.RULE_functionDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(134)
		 	try match(TLParser.Tokens.Def.rawValue)
		 	setState(135)
		 	try match(TLParser.Tokens.Identifier.rawValue)
		 	setState(136)
		 	try match(TLParser.Tokens.OParen.rawValue)
		 	setState(138)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.Identifier.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(137)
		 		try idList()

		 	}

		 	setState(140)
		 	try match(TLParser.Tokens.CParen.rawValue)
		 	setState(141)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(142)
		 	try block()
		 	setState(143)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ForStatementContext: ParserRuleContext {
			open
			func For() -> TerminalNode? {
				return getToken(TLParser.Tokens.For.rawValue, 0)
			}
			open
			func Identifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, 0)
			}
			open
			func Assign() -> TerminalNode? {
				return getToken(TLParser.Tokens.Assign.rawValue, 0)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func To() -> TerminalNode? {
				return getToken(TLParser.Tokens.To.rawValue, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_forStatement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterForStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitForStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitForStatement(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitForStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func forStatement() throws -> ForStatementContext {
        let _localctx: ForStatementContext = ForStatementContext(_ctx, getState())
		try enterRule(_localctx, 20, TLParser.RULE_forStatement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(145)
		 	try match(TLParser.Tokens.For.rawValue)
		 	setState(146)
		 	try match(TLParser.Tokens.Identifier.rawValue)
		 	setState(147)
		 	try match(TLParser.Tokens.Assign.rawValue)
		 	setState(148)
		 	try expression(0)
		 	setState(149)
		 	try match(TLParser.Tokens.To.rawValue)
		 	setState(150)
		 	try expression(0)
		 	setState(151)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(152)
		 	try block()
		 	setState(153)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class WhileStatementContext: ParserRuleContext {
			open
			func While() -> TerminalNode? {
				return getToken(TLParser.Tokens.While.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func OBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBrace.rawValue, 0)
			}
			open
			func block() -> BlockContext? {
				return getRuleContext(BlockContext.self, 0)
			}
			open
			func CBrace() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBrace.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_whileStatement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterWhileStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitWhileStatement(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitWhileStatement(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitWhileStatement(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func whileStatement() throws -> WhileStatementContext {
        let _localctx: WhileStatementContext = WhileStatementContext(_ctx, getState())
		try enterRule(_localctx, 22, TLParser.RULE_whileStatement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(155)
		 	try match(TLParser.Tokens.While.rawValue)
		 	setState(156)
		 	try expression(0)
		 	setState(157)
		 	try match(TLParser.Tokens.OBrace.rawValue)
		 	setState(158)
		 	try block()
		 	setState(159)
		 	try match(TLParser.Tokens.CBrace.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IdListContext: ParserRuleContext {
			open
			func Identifier() -> [TerminalNode] {
				return getTokens(TLParser.Tokens.Identifier.rawValue)
			}
			open
			func Identifier(_ i:Int) -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, i)
			}
			open
			func Comma() -> [TerminalNode] {
				return getTokens(TLParser.Tokens.Comma.rawValue)
			}
			open
			func Comma(_ i:Int) -> TerminalNode? {
				return getToken(TLParser.Tokens.Comma.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_idList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIdList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIdList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIdList(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIdList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func idList() throws -> IdListContext {
        let _localctx: IdListContext = IdListContext(_ctx, getState())
		try enterRule(_localctx, 24, TLParser.RULE_idList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(161)
		 	try match(TLParser.Tokens.Identifier.rawValue)
		 	setState(166)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.Comma.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(162)
		 		try match(TLParser.Tokens.Comma.rawValue)
		 		setState(163)
		 		try match(TLParser.Tokens.Identifier.rawValue)


		 		setState(168)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExprListContext: ParserRuleContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Comma() -> [TerminalNode] {
				return getTokens(TLParser.Tokens.Comma.rawValue)
			}
			open
			func Comma(_ i:Int) -> TerminalNode? {
				return getToken(TLParser.Tokens.Comma.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_exprList
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterExprList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitExprList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitExprList(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitExprList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func exprList() throws -> ExprListContext {
        let _localctx: ExprListContext = ExprListContext(_ctx, getState())
		try enterRule(_localctx, 26, TLParser.RULE_exprList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(169)
		 	try expression(0)
		 	setState(174)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == TLParser.Tokens.Comma.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(170)
		 		try match(TLParser.Tokens.Comma.rawValue)
		 		setState(171)
		 		try expression(0)


		 		setState(176)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExpressionContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_expression
		}
	}
	public class BoolExpressionContext: ExpressionContext {
			open
			func Bool() -> TerminalNode? {
				return getToken(TLParser.Tokens.Bool.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterBoolExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitBoolExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitBoolExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitBoolExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NumberExpressionContext: ExpressionContext {
			open
			func Number() -> TerminalNode? {
				return getToken(TLParser.Tokens.Number.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterNumberExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitNumberExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitNumberExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitNumberExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class IdentifierExpressionContext: ExpressionContext {
			open
			func Identifier() -> TerminalNode? {
				return getToken(TLParser.Tokens.Identifier.rawValue, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIdentifierExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIdentifierExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIdentifierExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIdentifierExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NotExpressionContext: ExpressionContext {
			open
			func Excl() -> TerminalNode? {
				return getToken(TLParser.Tokens.Excl.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterNotExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitNotExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitNotExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitNotExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class OrExpressionContext: ExpressionContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Or() -> TerminalNode? {
				return getToken(TLParser.Tokens.Or.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterOrExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitOrExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitOrExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitOrExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class UnaryMinusExpressionContext: ExpressionContext {
			open
			func Subtract() -> TerminalNode? {
				return getToken(TLParser.Tokens.Subtract.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterUnaryMinusExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitUnaryMinusExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitUnaryMinusExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitUnaryMinusExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class PowerExpressionContext: ExpressionContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Pow() -> TerminalNode? {
				return getToken(TLParser.Tokens.Pow.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterPowerExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitPowerExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitPowerExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitPowerExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class EqExpressionContext: ExpressionContext {
		public var op: Token!
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Equals() -> TerminalNode? {
				return getToken(TLParser.Tokens.Equals.rawValue, 0)
			}
			open
			func NEquals() -> TerminalNode? {
				return getToken(TLParser.Tokens.NEquals.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterEqExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitEqExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitEqExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitEqExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AndExpressionContext: ExpressionContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func And() -> TerminalNode? {
				return getToken(TLParser.Tokens.And.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterAndExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitAndExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitAndExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitAndExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class InExpressionContext: ExpressionContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func In() -> TerminalNode? {
				return getToken(TLParser.Tokens.In.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterInExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitInExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitInExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitInExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class StringExpressionContext: ExpressionContext {
			open
			func String() -> TerminalNode? {
				return getToken(TLParser.Tokens.String.rawValue, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterStringExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitStringExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitStringExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitStringExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ExpressionExpressionContext: ExpressionContext {
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterExpressionExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitExpressionExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitExpressionExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitExpressionExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AddExpressionContext: ExpressionContext {
		public var op: Token!
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Add() -> TerminalNode? {
				return getToken(TLParser.Tokens.Add.rawValue, 0)
			}
			open
			func Subtract() -> TerminalNode? {
				return getToken(TLParser.Tokens.Subtract.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterAddExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitAddExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitAddExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitAddExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class CompExpressionContext: ExpressionContext {
		public var op: Token!
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func GTEquals() -> TerminalNode? {
				return getToken(TLParser.Tokens.GTEquals.rawValue, 0)
			}
			open
			func LTEquals() -> TerminalNode? {
				return getToken(TLParser.Tokens.LTEquals.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(TLParser.Tokens.GT.rawValue, 0)
			}
			open
			func LT() -> TerminalNode? {
				return getToken(TLParser.Tokens.LT.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterCompExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitCompExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitCompExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitCompExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class NullExpressionContext: ExpressionContext {
			open
			func Null() -> TerminalNode? {
				return getToken(TLParser.Tokens.Null.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterNullExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitNullExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitNullExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitNullExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FunctionCallExpressionContext: ExpressionContext {
			open
			func functionCall() -> FunctionCallContext? {
				return getRuleContext(FunctionCallContext.self, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterFunctionCallExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitFunctionCallExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitFunctionCallExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitFunctionCallExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class MultExpressionContext: ExpressionContext {
		public var op: Token!
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func Multiply() -> TerminalNode? {
				return getToken(TLParser.Tokens.Multiply.rawValue, 0)
			}
			open
			func Divide() -> TerminalNode? {
				return getToken(TLParser.Tokens.Divide.rawValue, 0)
			}
			open
			func Modulus() -> TerminalNode? {
				return getToken(TLParser.Tokens.Modulus.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterMultExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitMultExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitMultExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitMultExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ListExpressionContext: ExpressionContext {
			open
			func list() -> ListContext? {
				return getRuleContext(ListContext.self, 0)
			}
			open
			func indexes() -> IndexesContext? {
				return getRuleContext(IndexesContext.self, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterListExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitListExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitListExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitListExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class TernaryExpressionContext: ExpressionContext {
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func QMark() -> TerminalNode? {
				return getToken(TLParser.Tokens.QMark.rawValue, 0)
			}
			open
			func Colon() -> TerminalNode? {
				return getToken(TLParser.Tokens.Colon.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterTernaryExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitTernaryExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitTernaryExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitTernaryExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class InputExpressionContext: ExpressionContext {
			open
			func Input() -> TerminalNode? {
				return getToken(TLParser.Tokens.Input.rawValue, 0)
			}
			open
			func OParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.OParen.rawValue, 0)
			}
			open
			func CParen() -> TerminalNode? {
				return getToken(TLParser.Tokens.CParen.rawValue, 0)
			}
			open
			func String() -> TerminalNode? {
				return getToken(TLParser.Tokens.String.rawValue, 0)
			}

		public
		init(_ ctx: ExpressionContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterInputExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitInputExpression(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitInputExpression(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitInputExpression(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func expression( ) throws -> ExpressionContext   {
		return try expression(0)
	}
	@discardableResult
	private func expression(_ _p: Int) throws -> ExpressionContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExpressionContext = ExpressionContext(_ctx, _parentState)
		var _prevctx: ExpressionContext = _localctx
        print(_prevctx)
		let _startState: Int = 28
		try enterRecursionRule(_localctx, 28, TLParser.RULE_expression, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(213)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,21, _ctx)) {
			case 1:
				_localctx = UnaryMinusExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(178)
				try match(TLParser.Tokens.Subtract.rawValue)
				setState(179)
				try expression(20)

				break
			case 2:
				_localctx = NotExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(180)
				try match(TLParser.Tokens.Excl.rawValue)
				setState(181)
				try expression(19)

				break
			case 3:
				_localctx = NumberExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(182)
				try match(TLParser.Tokens.Number.rawValue)

				break
			case 4:
				_localctx = BoolExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(183)
				try match(TLParser.Tokens.Bool.rawValue)

				break
			case 5:
				_localctx = NullExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(184)
				try match(TLParser.Tokens.Null.rawValue)

				break
			case 6:
				_localctx = FunctionCallExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(185)
				try functionCall()
				setState(187)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,15,_ctx)) {
				case 1:
					setState(186)
					try indexes()

					break
				default: break
				}

				break
			case 7:
				_localctx = ListExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(189)
				try list()
				setState(191)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,16,_ctx)) {
				case 1:
					setState(190)
					try indexes()

					break
				default: break
				}

				break
			case 8:
				_localctx = IdentifierExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(193)
				try match(TLParser.Tokens.Identifier.rawValue)
				setState(195)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,17,_ctx)) {
				case 1:
					setState(194)
					try indexes()

					break
				default: break
				}

				break
			case 9:
				_localctx = StringExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(197)
				try match(TLParser.Tokens.String.rawValue)
				setState(199)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,18,_ctx)) {
				case 1:
					setState(198)
					try indexes()

					break
				default: break
				}

				break
			case 10:
				_localctx = ExpressionExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(201)
				try match(TLParser.Tokens.OParen.rawValue)
				setState(202)
				try expression(0)
				setState(203)
				try match(TLParser.Tokens.CParen.rawValue)
				setState(205)
				try _errHandler.sync(self)
				switch (try getInterpreter().adaptivePredict(_input,19,_ctx)) {
				case 1:
					setState(204)
					try indexes()

					break
				default: break
				}

				break
			case 11:
				_localctx = InputExpressionContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(207)
				try match(TLParser.Tokens.Input.rawValue)
				setState(208)
				try match(TLParser.Tokens.OParen.rawValue)
				setState(210)
				try _errHandler.sync(self)
				_la = try _input.LA(1)
				if (//closure
				 { () -> Bool in
				      let testSet: Bool = _la == TLParser.Tokens.String.rawValue
				      return testSet
				 }()) {
					setState(209)
					try match(TLParser.Tokens.String.rawValue)

				}

				setState(212)
				try match(TLParser.Tokens.CParen.rawValue)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(247)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(245)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,22, _ctx)) {
					case 1:
						_localctx = PowerExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(215)
						if (!(precpred(_ctx, 18))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 18)"))
						}
						setState(216)
						try match(TLParser.Tokens.Pow.rawValue)
						setState(217)
						try expression(18)

						break
					case 2:
						_localctx = MultExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(218)
						if (!(precpred(_ctx, 17))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 17)"))
						}
						setState(219)
						_localctx.castdown(MultExpressionContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, TLParser.Tokens.Multiply.rawValue,TLParser.Tokens.Divide.rawValue,TLParser.Tokens.Modulus.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 0)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(MultExpressionContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(220)
						try expression(18)

						break
					case 3:
						_localctx = AddExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(221)
						if (!(precpred(_ctx, 16))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 16)"))
						}
						setState(222)
						_localctx.castdown(AddExpressionContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == TLParser.Tokens.Add.rawValue || _la == TLParser.Tokens.Subtract.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(AddExpressionContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(223)
						try expression(17)

						break
					case 4:
						_localctx = CompExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(224)
						if (!(precpred(_ctx, 15))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 15)"))
						}
						setState(225)
						_localctx.castdown(CompExpressionContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = {  () -> Bool in
						   let testArray: [Int] = [_la, TLParser.Tokens.GTEquals.rawValue,TLParser.Tokens.LTEquals.rawValue,TLParser.Tokens.GT.rawValue,TLParser.Tokens.LT.rawValue]
						    return  Utils.testBitLeftShiftArray(testArray, 0)
						}()
						      return testSet
						 }())) {
							_localctx.castdown(CompExpressionContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(226)
						try expression(16)

						break
					case 5:
						_localctx = EqExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(227)
						if (!(precpred(_ctx, 14))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 14)"))
						}
						setState(228)
						_localctx.castdown(EqExpressionContext.self).op = try _input.LT(1)
						_la = try _input.LA(1)
						if (!(//closure
						 { () -> Bool in
						      let testSet: Bool = _la == TLParser.Tokens.Equals.rawValue || _la == TLParser.Tokens.NEquals.rawValue
						      return testSet
						 }())) {
							_localctx.castdown(EqExpressionContext.self).op = try _errHandler.recoverInline(self) as Token
						}
						else {
							_errHandler.reportMatch(self)
							try consume()
						}
						setState(229)
						try expression(15)

						break
					case 6:
						_localctx = AndExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(230)
						if (!(precpred(_ctx, 13))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 13)"))
						}
						setState(231)
						try match(TLParser.Tokens.And.rawValue)
						setState(232)
						try expression(14)

						break
					case 7:
						_localctx = OrExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(233)
						if (!(precpred(_ctx, 12))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 12)"))
						}
						setState(234)
						try match(TLParser.Tokens.Or.rawValue)
						setState(235)
						try expression(13)

						break
					case 8:
						_localctx = TernaryExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(236)
						if (!(precpred(_ctx, 11))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 11)"))
						}
						setState(237)
						try match(TLParser.Tokens.QMark.rawValue)
						setState(238)
						try expression(0)
						setState(239)
						try match(TLParser.Tokens.Colon.rawValue)
						setState(240)
						try expression(12)

						break
					case 9:
						_localctx = InExpressionContext(  ExpressionContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, TLParser.RULE_expression)
						setState(242)
						if (!(precpred(_ctx, 10))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 10)"))
						}
						setState(243)
						try match(TLParser.Tokens.In.rawValue)
						setState(244)
						try expression(11)

						break
					default: break
					}
			 
				}
				setState(249)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class ListContext: ParserRuleContext {
			open
			func OBracket() -> TerminalNode? {
				return getToken(TLParser.Tokens.OBracket.rawValue, 0)
			}
			open
			func CBracket() -> TerminalNode? {
				return getToken(TLParser.Tokens.CBracket.rawValue, 0)
			}
			open
			func exprList() -> ExprListContext? {
				return getRuleContext(ExprListContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitList(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitList(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func list() throws -> ListContext {
        let _localctx: ListContext = ListContext(_ctx, getState())
		try enterRule(_localctx, 30, TLParser.RULE_list)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(250)
		 	try match(TLParser.Tokens.OBracket.rawValue)
		 	setState(252)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, TLParser.Tokens.Println.rawValue,TLParser.Tokens.Print.rawValue,TLParser.Tokens.Input.rawValue,TLParser.Tokens.Assert.rawValue,TLParser.Tokens.Size.rawValue,TLParser.Tokens.Null.rawValue,TLParser.Tokens.Excl.rawValue,TLParser.Tokens.Subtract.rawValue,TLParser.Tokens.OBracket.rawValue,TLParser.Tokens.OParen.rawValue,TLParser.Tokens.Bool.rawValue,TLParser.Tokens.Number.rawValue,TLParser.Tokens.BuildIdentifier.rawValue,TLParser.Tokens.Identifier.rawValue,TLParser.Tokens.String.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(251)
		 		try exprList()

		 	}

		 	setState(254)
		 	try match(TLParser.Tokens.CBracket.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class IndexesContext: ParserRuleContext {
			open
			func OBracket() -> [TerminalNode] {
				return getTokens(TLParser.Tokens.OBracket.rawValue)
			}
			open
			func OBracket(_ i:Int) -> TerminalNode? {
				return getToken(TLParser.Tokens.OBracket.rawValue, i)
			}
			open
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
			}
			open
			func CBracket() -> [TerminalNode] {
				return getTokens(TLParser.Tokens.CBracket.rawValue)
			}
			open
			func CBracket(_ i:Int) -> TerminalNode? {
				return getToken(TLParser.Tokens.CBracket.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return TLParser.RULE_indexes
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.enterIndexes(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? TLListener {
				listener.exitIndexes(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? TLVisitor {
			    return visitor.visitIndexes(self)
			}
			else if let visitor = visitor as? TLBaseVisitor {
			    return visitor.visitIndexes(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func indexes() throws -> IndexesContext {
        let _localctx: IndexesContext = IndexesContext(_ctx, getState())
		try enterRule(_localctx, 32, TLParser.RULE_indexes)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(260); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(256)
		 			try match(TLParser.Tokens.OBracket.rawValue)
		 			setState(257)
		 			try expression(0)
		 			setState(258)
		 			try match(TLParser.Tokens.CBracket.rawValue)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(262); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,25,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  14:
			return try expression_sempred(_localctx?.castdown(ExpressionContext.self), predIndex)
	    default: return true
		}
	}
	private func expression_sempred(_ _localctx: ExpressionContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 18)
		    case 1:return precpred(_ctx, 17)
		    case 2:return precpred(_ctx, 16)
		    case 3:return precpred(_ctx, 15)
		    case 4:return precpred(_ctx, 14)
		    case 5:return precpred(_ctx, 13)
		    case 6:return precpred(_ctx, 12)
		    case 7:return precpred(_ctx, 11)
		    case 8:return precpred(_ctx, 10)
		    default: return true
		}
	}


	public
	static let _serializedATN = TLParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}
