// Generated from ./TL.g4 by ANTLR 4.9.2
import Antlr4

open class TLLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = TLLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(TLLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let Println=1, Print=2, Input=3, Assert=4, Size=5, Def=6, If=7, 
            Else=8, Return=9, For=10, While=11, To=12, Do=13, End=14, In=15, 
            Null=16, Or=17, And=18, Equals=19, NEquals=20, GTEquals=21, 
            LTEquals=22, Pow=23, Excl=24, GT=25, LT=26, Add=27, Subtract=28, 
            Multiply=29, Divide=30, Modulus=31, OBrace=32, CBrace=33, OBracket=34, 
            CBracket=35, OParen=36, CParen=37, SColon=38, Assign=39, Comma=40, 
            QMark=41, Colon=42, Bool=43, Number=44, BuildIdentifier=45, 
            Identifier=46, String=47, Comment=48, Space=49

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"Println", "Print", "Input", "Assert", "Size", "Def", "If", "Else", "Return", 
		"For", "While", "To", "Do", "End", "In", "Null", "Or", "And", "Equals", 
		"NEquals", "GTEquals", "LTEquals", "Pow", "Excl", "GT", "LT", "Add", "Subtract", 
		"Multiply", "Divide", "Modulus", "OBrace", "CBrace", "OBracket", "CBracket", 
		"OParen", "CParen", "SColon", "Assign", "Comma", "QMark", "Colon", "Bool", 
		"Number", "BuildIdentifier", "Identifier", "String", "Comment", "Space", 
		"Int", "Digit"
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
	func getVocabulary() -> Vocabulary {
		return TLLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, TLLexer._ATN, TLLexer._decisionToDFA, TLLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "TL.g4" }

	override open
	func getRuleNames() -> [String] { return TLLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return TLLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return TLLexer.channelNames }

	override open
	func getModeNames() -> [String] { return TLLexer.modeNames }

	override open
	func getATN() -> ATN { return TLLexer._ATN }


	public
	static let _serializedATN: String = TLLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}