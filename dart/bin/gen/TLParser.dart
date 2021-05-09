// Generated from ./TL.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'TLListener.dart';
import 'TLBaseListener.dart';
import 'TLVisitor.dart';
import 'TLBaseVisitor.dart';

const int RULE_parse = 0, RULE_block = 1, RULE_statement = 2, RULE_assignment = 3, 
          RULE_functionCall = 4, RULE_ifStatement = 5, RULE_ifStat = 6, 
          RULE_elseIfStat = 7, RULE_elseStat = 8, RULE_functionDecl = 9, 
          RULE_forStatement = 10, RULE_whileStatement = 11, RULE_idList = 12, 
          RULE_exprList = 13, RULE_expression = 14, RULE_list = 15, RULE_indexes = 16;
class TLParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.9.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_Println = 1, TOKEN_Print = 2, TOKEN_Input = 3, 
                   TOKEN_Assert = 4, TOKEN_Size = 5, TOKEN_Def = 6, TOKEN_If = 7, 
                   TOKEN_Else = 8, TOKEN_Return = 9, TOKEN_For = 10, TOKEN_While = 11, 
                   TOKEN_To = 12, TOKEN_Do = 13, TOKEN_End = 14, TOKEN_In = 15, 
                   TOKEN_Null = 16, TOKEN_Or = 17, TOKEN_And = 18, TOKEN_Equals = 19, 
                   TOKEN_NEquals = 20, TOKEN_GTEquals = 21, TOKEN_LTEquals = 22, 
                   TOKEN_Pow = 23, TOKEN_Excl = 24, TOKEN_GT = 25, TOKEN_LT = 26, 
                   TOKEN_Add = 27, TOKEN_Subtract = 28, TOKEN_Multiply = 29, 
                   TOKEN_Divide = 30, TOKEN_Modulus = 31, TOKEN_OBrace = 32, 
                   TOKEN_CBrace = 33, TOKEN_OBracket = 34, TOKEN_CBracket = 35, 
                   TOKEN_OParen = 36, TOKEN_CParen = 37, TOKEN_SColon = 38, 
                   TOKEN_Assign = 39, TOKEN_Comma = 40, TOKEN_QMark = 41, 
                   TOKEN_Colon = 42, TOKEN_Bool = 43, TOKEN_Number = 44, 
                   TOKEN_BuildIdentifier = 45, TOKEN_Identifier = 46, TOKEN_String = 47, 
                   TOKEN_Comment = 48, TOKEN_Space = 49;

  @override
  final List<String> ruleNames = [
    'parse', 'block', 'statement', 'assignment', 'functionCall', 'ifStatement', 
    'ifStat', 'elseIfStat', 'elseStat', 'functionDecl', 'forStatement', 
    'whileStatement', 'idList', 'exprList', 'expression', 'list', 'indexes'
  ];

  static final List<String> _LITERAL_NAMES = [
      null, "'println'", "'print'", "'input'", "'assert'", "'size'", "'func'", 
      "'if'", "'else'", "'return'", "'for'", "'while'", "'to'", "'do'", 
      "'end'", "'in'", "'null'", "'||'", "'&&'", "'=='", "'!='", "'>='", 
      "'<='", "'^'", "'!'", "'>'", "'<'", "'+'", "'-'", "'*'", "'/'", "'%'", 
      "'{'", "'}'", "'['", "']'", "'('", "')'", "';'", "'='", "','", "'?'", 
      "':'"
  ];
  static final List<String> _SYMBOLIC_NAMES = [
      null, "Println", "Print", "Input", "Assert", "Size", "Def", "If", 
      "Else", "Return", "For", "While", "To", "Do", "End", "In", "Null", 
      "Or", "And", "Equals", "NEquals", "GTEquals", "LTEquals", "Pow", "Excl", 
      "GT", "LT", "Add", "Subtract", "Multiply", "Divide", "Modulus", "OBrace", 
      "CBrace", "OBracket", "CBracket", "OParen", "CParen", "SColon", "Assign", 
      "Comma", "QMark", "Colon", "Bool", "Number", "BuildIdentifier", "Identifier", 
      "String", "Comment", "Space"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'TL.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  TLParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ParseContext parse() {
    dynamic _localctx = ParseContext(context, state);
    enterRule(_localctx, 0, RULE_parse);
    try {
      enterOuterAlt(_localctx, 1);
      state = 36;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 0, context)) {
      case 1:
        state = 34;
        block();
        break;
      case 2:
        state = 35;
        statement();
        break;
      }
      state = 38;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 2, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 44;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Println) | (BigInt.one << TOKEN_Print) | (BigInt.one << TOKEN_Assert) | (BigInt.one << TOKEN_Size) | (BigInt.one << TOKEN_Def) | (BigInt.one << TOKEN_If) | (BigInt.one << TOKEN_For) | (BigInt.one << TOKEN_While) | (BigInt.one << TOKEN_BuildIdentifier) | (BigInt.one << TOKEN_Identifier))) != BigInt.zero)) {
        state = 42;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)) {
        case TOKEN_Println:
        case TOKEN_Print:
        case TOKEN_Assert:
        case TOKEN_Size:
        case TOKEN_If:
        case TOKEN_For:
        case TOKEN_While:
        case TOKEN_BuildIdentifier:
        case TOKEN_Identifier:
          state = 40;
          statement();
          break;
        case TOKEN_Def:
          state = 41;
          functionDecl();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 46;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 51;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_Return) {
        state = 47;
        match(TOKEN_Return);
        state = 48;
        expression(0);
        state = 49;
        match(TOKEN_SColon);
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 4, RULE_statement);
    try {
      state = 62;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 53;
        assignment();
        state = 54;
        match(TOKEN_SColon);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 56;
        functionCall();
        state = 57;
        match(TOKEN_SColon);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 59;
        ifStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 60;
        forStatement();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 61;
        whileStatement();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 6, RULE_assignment);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 64;
      match(TOKEN_Identifier);
      state = 66;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_OBracket) {
        state = 65;
        indexes();
      }

      state = 68;
      match(TOKEN_Assign);
      state = 69;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionCallContext functionCall() {
    dynamic _localctx = FunctionCallContext(context, state);
    enterRule(_localctx, 8, RULE_functionCall);
    int _la;
    try {
      state = 104;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
      case TOKEN_BuildIdentifier:
        _localctx = BuildInIdentifierFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 71;
        match(TOKEN_BuildIdentifier);
        state = 72;
        match(TOKEN_OParen);
        state = 74;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Println) | (BigInt.one << TOKEN_Print) | (BigInt.one << TOKEN_Input) | (BigInt.one << TOKEN_Assert) | (BigInt.one << TOKEN_Size) | (BigInt.one << TOKEN_Null) | (BigInt.one << TOKEN_Excl) | (BigInt.one << TOKEN_Subtract) | (BigInt.one << TOKEN_OBracket) | (BigInt.one << TOKEN_OParen) | (BigInt.one << TOKEN_Bool) | (BigInt.one << TOKEN_Number) | (BigInt.one << TOKEN_BuildIdentifier) | (BigInt.one << TOKEN_Identifier) | (BigInt.one << TOKEN_String))) != BigInt.zero)) {
          state = 73;
          exprList();
        }

        state = 76;
        match(TOKEN_CParen);
        break;
      case TOKEN_Identifier:
        _localctx = IdentifierFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 77;
        match(TOKEN_Identifier);
        state = 78;
        match(TOKEN_OParen);
        state = 80;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Println) | (BigInt.one << TOKEN_Print) | (BigInt.one << TOKEN_Input) | (BigInt.one << TOKEN_Assert) | (BigInt.one << TOKEN_Size) | (BigInt.one << TOKEN_Null) | (BigInt.one << TOKEN_Excl) | (BigInt.one << TOKEN_Subtract) | (BigInt.one << TOKEN_OBracket) | (BigInt.one << TOKEN_OParen) | (BigInt.one << TOKEN_Bool) | (BigInt.one << TOKEN_Number) | (BigInt.one << TOKEN_BuildIdentifier) | (BigInt.one << TOKEN_Identifier) | (BigInt.one << TOKEN_String))) != BigInt.zero)) {
          state = 79;
          exprList();
        }

        state = 82;
        match(TOKEN_CParen);
        break;
      case TOKEN_Println:
        _localctx = PrintlnFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 83;
        match(TOKEN_Println);
        state = 84;
        match(TOKEN_OParen);
        state = 86;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Println) | (BigInt.one << TOKEN_Print) | (BigInt.one << TOKEN_Input) | (BigInt.one << TOKEN_Assert) | (BigInt.one << TOKEN_Size) | (BigInt.one << TOKEN_Null) | (BigInt.one << TOKEN_Excl) | (BigInt.one << TOKEN_Subtract) | (BigInt.one << TOKEN_OBracket) | (BigInt.one << TOKEN_OParen) | (BigInt.one << TOKEN_Bool) | (BigInt.one << TOKEN_Number) | (BigInt.one << TOKEN_BuildIdentifier) | (BigInt.one << TOKEN_Identifier) | (BigInt.one << TOKEN_String))) != BigInt.zero)) {
          state = 85;
          expression(0);
        }

        state = 88;
        match(TOKEN_CParen);
        break;
      case TOKEN_Print:
        _localctx = PrintFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 89;
        match(TOKEN_Print);
        state = 90;
        match(TOKEN_OParen);
        state = 91;
        expression(0);
        state = 92;
        match(TOKEN_CParen);
        break;
      case TOKEN_Assert:
        _localctx = AssertFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 94;
        match(TOKEN_Assert);
        state = 95;
        match(TOKEN_OParen);
        state = 96;
        expression(0);
        state = 97;
        match(TOKEN_CParen);
        break;
      case TOKEN_Size:
        _localctx = SizeFunctionCallContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 99;
        match(TOKEN_Size);
        state = 100;
        match(TOKEN_OParen);
        state = 101;
        expression(0);
        state = 102;
        match(TOKEN_CParen);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 10, RULE_ifStatement);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 106;
      ifStat();
      state = 110;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 10, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 107;
          elseIfStat(); 
        }
        state = 112;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 10, context);
      }
      state = 114;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_Else) {
        state = 113;
        elseStat();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IfStatContext ifStat() {
    dynamic _localctx = IfStatContext(context, state);
    enterRule(_localctx, 12, RULE_ifStat);
    try {
      enterOuterAlt(_localctx, 1);
      state = 116;
      match(TOKEN_If);
      state = 117;
      expression(0);
      state = 118;
      match(TOKEN_OBrace);
      state = 119;
      block();
      state = 120;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElseIfStatContext elseIfStat() {
    dynamic _localctx = ElseIfStatContext(context, state);
    enterRule(_localctx, 14, RULE_elseIfStat);
    try {
      enterOuterAlt(_localctx, 1);
      state = 122;
      match(TOKEN_Else);
      state = 123;
      match(TOKEN_If);
      state = 124;
      expression(0);
      state = 125;
      match(TOKEN_OBrace);
      state = 126;
      block();
      state = 127;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElseStatContext elseStat() {
    dynamic _localctx = ElseStatContext(context, state);
    enterRule(_localctx, 16, RULE_elseStat);
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      match(TOKEN_Else);
      state = 130;
      match(TOKEN_OBrace);
      state = 131;
      block();
      state = 132;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FunctionDeclContext functionDecl() {
    dynamic _localctx = FunctionDeclContext(context, state);
    enterRule(_localctx, 18, RULE_functionDecl);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
      match(TOKEN_Def);
      state = 135;
      match(TOKEN_Identifier);
      state = 136;
      match(TOKEN_OParen);
      state = 138;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_Identifier) {
        state = 137;
        idList();
      }

      state = 140;
      match(TOKEN_CParen);
      state = 141;
      match(TOKEN_OBrace);
      state = 142;
      block();
      state = 143;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForStatementContext forStatement() {
    dynamic _localctx = ForStatementContext(context, state);
    enterRule(_localctx, 20, RULE_forStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 145;
      match(TOKEN_For);
      state = 146;
      match(TOKEN_Identifier);
      state = 147;
      match(TOKEN_Assign);
      state = 148;
      expression(0);
      state = 149;
      match(TOKEN_To);
      state = 150;
      expression(0);
      state = 151;
      match(TOKEN_OBrace);
      state = 152;
      block();
      state = 153;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhileStatementContext whileStatement() {
    dynamic _localctx = WhileStatementContext(context, state);
    enterRule(_localctx, 22, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 155;
      match(TOKEN_While);
      state = 156;
      expression(0);
      state = 157;
      match(TOKEN_OBrace);
      state = 158;
      block();
      state = 159;
      match(TOKEN_CBrace);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdListContext idList() {
    dynamic _localctx = IdListContext(context, state);
    enterRule(_localctx, 24, RULE_idList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 161;
      match(TOKEN_Identifier);
      state = 166;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_Comma) {
        state = 162;
        match(TOKEN_Comma);
        state = 163;
        match(TOKEN_Identifier);
        state = 168;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExprListContext exprList() {
    dynamic _localctx = ExprListContext(context, state);
    enterRule(_localctx, 26, RULE_exprList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 169;
      expression(0);
      state = 174;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_Comma) {
        state = 170;
        match(TOKEN_Comma);
        state = 171;
        expression(0);
        state = 176;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 28;
    enterRecursionRule(_localctx, 28, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 213;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 21, context)) {
      case 1:
        _localctx = UnaryMinusExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 178;
        match(TOKEN_Subtract);
        state = 179;
        expression(20);
        break;
      case 2:
        _localctx = NotExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 180;
        match(TOKEN_Excl);
        state = 181;
        expression(19);
        break;
      case 3:
        _localctx = NumberExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 182;
        match(TOKEN_Number);
        break;
      case 4:
        _localctx = BoolExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 183;
        match(TOKEN_Bool);
        break;
      case 5:
        _localctx = NullExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 184;
        match(TOKEN_Null);
        break;
      case 6:
        _localctx = FunctionCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 185;
        functionCall();
        state = 187;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 15, context)) {
        case 1:
          state = 186;
          indexes();
          break;
        }
        break;
      case 7:
        _localctx = ListExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 189;
        list();
        state = 191;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 16, context)) {
        case 1:
          state = 190;
          indexes();
          break;
        }
        break;
      case 8:
        _localctx = IdentifierExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 193;
        match(TOKEN_Identifier);
        state = 195;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 17, context)) {
        case 1:
          state = 194;
          indexes();
          break;
        }
        break;
      case 9:
        _localctx = StringExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 197;
        match(TOKEN_String);
        state = 199;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 18, context)) {
        case 1:
          state = 198;
          indexes();
          break;
        }
        break;
      case 10:
        _localctx = ExpressionExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 201;
        match(TOKEN_OParen);
        state = 202;
        expression(0);
        state = 203;
        match(TOKEN_CParen);
        state = 205;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 19, context)) {
        case 1:
          state = 204;
          indexes();
          break;
        }
        break;
      case 11:
        _localctx = InputExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 207;
        match(TOKEN_Input);
        state = 208;
        match(TOKEN_OParen);
        state = 210;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_String) {
          state = 209;
          match(TOKEN_String);
        }

        state = 212;
        match(TOKEN_CParen);
        break;
      }
      context.stop = tokenStream.LT(-1);
      state = 247;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 23, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 245;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 22, context)) {
          case 1:
            _localctx = PowerExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 215;
            if (!(precpred(context, 18))) {
              throw FailedPredicateException(this, "precpred(context, 18)");
            }
            state = 216;
            match(TOKEN_Pow);
            state = 217;
            expression(18);
            break;
          case 2:
            _localctx = MultExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 218;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 219;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Multiply) | (BigInt.one << TOKEN_Divide) | (BigInt.one << TOKEN_Modulus))) != BigInt.zero))) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 220;
            expression(18);
            break;
          case 3:
            _localctx = AddExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 221;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 222;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(_la == TOKEN_Add || _la == TOKEN_Subtract)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 223;
            expression(17);
            break;
          case 4:
            _localctx = CompExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 224;
            if (!(precpred(context, 15))) {
              throw FailedPredicateException(this, "precpred(context, 15)");
            }
            state = 225;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_GTEquals) | (BigInt.one << TOKEN_LTEquals) | (BigInt.one << TOKEN_GT) | (BigInt.one << TOKEN_LT))) != BigInt.zero))) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 226;
            expression(16);
            break;
          case 5:
            _localctx = EqExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 227;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 228;
            _localctx.op = tokenStream.LT(1);
            _la = tokenStream.LA(1);
            if (!(_la == TOKEN_Equals || _la == TOKEN_NEquals)) {
              _localctx.op = errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)==IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 229;
            expression(15);
            break;
          case 6:
            _localctx = AndExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 230;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 231;
            match(TOKEN_And);
            state = 232;
            expression(14);
            break;
          case 7:
            _localctx = OrExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 233;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 234;
            match(TOKEN_Or);
            state = 235;
            expression(13);
            break;
          case 8:
            _localctx = TernaryExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 236;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 237;
            match(TOKEN_QMark);
            state = 238;
            expression(0);
            state = 239;
            match(TOKEN_Colon);
            state = 240;
            expression(12);
            break;
          case 9:
            _localctx = InExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 242;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 243;
            match(TOKEN_In);
            state = 244;
            expression(11);
            break;
          } 
        }
        state = 249;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 23, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  ListContext list() {
    dynamic _localctx = ListContext(context, state);
    enterRule(_localctx, 30, RULE_list);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 250;
      match(TOKEN_OBracket);
      state = 252;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_Println) | (BigInt.one << TOKEN_Print) | (BigInt.one << TOKEN_Input) | (BigInt.one << TOKEN_Assert) | (BigInt.one << TOKEN_Size) | (BigInt.one << TOKEN_Null) | (BigInt.one << TOKEN_Excl) | (BigInt.one << TOKEN_Subtract) | (BigInt.one << TOKEN_OBracket) | (BigInt.one << TOKEN_OParen) | (BigInt.one << TOKEN_Bool) | (BigInt.one << TOKEN_Number) | (BigInt.one << TOKEN_BuildIdentifier) | (BigInt.one << TOKEN_Identifier) | (BigInt.one << TOKEN_String))) != BigInt.zero)) {
        state = 251;
        exprList();
      }

      state = 254;
      match(TOKEN_CBracket);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IndexesContext indexes() {
    dynamic _localctx = IndexesContext(context, state);
    enterRule(_localctx, 32, RULE_indexes);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 260; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 256;
          match(TOKEN_OBracket);
          state = 257;
          expression(0);
          state = 258;
          match(TOKEN_CBracket);
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 262; 
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 25, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 14:
      return _expression_sempred(_localctx, predIndex);
    }
    return true;
  }
  bool _expression_sempred(ExpressionContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 18);
      case 1: return precpred(context, 17);
      case 2: return precpred(context, 16);
      case 3: return precpred(context, 15);
      case 4: return precpred(context, 14);
      case 5: return precpred(context, 13);
      case 6: return precpred(context, 12);
      case 7: return precpred(context, 11);
      case 8: return precpred(context, 10);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
  	'\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{33}\u{10B}\u{4}\u{2}\u{9}\u{2}'
  	'\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
  	'\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
  	'\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
  	'\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
  	'\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{3}\u{2}\u{3}\u{2}\u{5}'
  	'\u{2}\u{27}\u{A}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}\u{7}\u{3}'
  	'\u{2D}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{30}\u{B}\u{3}\u{3}\u{3}\u{3}\u{3}'
  	'\u{3}\u{3}\u{3}\u{3}\u{5}\u{3}\u{36}\u{A}\u{3}\u{3}\u{4}\u{3}\u{4}\u{3}'
  	'\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{3}\u{4}\u{5}'
  	'\u{4}\u{41}\u{A}\u{4}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{45}\u{A}\u{5}\u{3}'
  	'\u{5}\u{3}\u{5}\u{3}\u{5}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{4D}'
  	'\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{53}\u{A}'
  	'\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{59}\u{A}\u{6}'
  	'\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
  	'\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}'
  	'\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{6B}\u{A}\u{6}\u{3}\u{7}\u{3}\u{7}\u{7}'
  	'\u{7}\u{6F}\u{A}\u{7}\u{C}\u{7}\u{E}\u{7}\u{72}\u{B}\u{7}\u{3}\u{7}\u{5}'
  	'\u{7}\u{75}\u{A}\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}'
  	'\u{3}\u{8}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}'
  	'\u{3}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{3}\u{B}'
  	'\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{8D}\u{A}\u{B}\u{3}\u{B}\u{3}'
  	'\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}'
  	'\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}'
  	'\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}'
  	'\u{E}\u{3}\u{E}\u{7}\u{E}\u{A7}\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}\u{AA}\u{B}'
  	'\u{E}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{7}\u{F}\u{AF}\u{A}\u{F}\u{C}\u{F}'
  	'\u{E}\u{F}\u{B2}\u{B}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}'
  	'\u{10}\u{BE}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{C2}\u{A}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{C6}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{5}\u{10}\u{CA}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{5}\u{10}\u{D0}\u{A}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}'
  	'\u{D5}\u{A}\u{10}\u{3}\u{10}\u{5}\u{10}\u{D8}\u{A}\u{10}\u{3}\u{10}\u{3}'
  	'\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}'
  	'\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}'
  	'\u{10}\u{3}\u{10}\u{3}\u{10}\u{7}\u{10}\u{F8}\u{A}\u{10}\u{C}\u{10}\u{E}'
  	'\u{10}\u{FB}\u{B}\u{10}\u{3}\u{11}\u{3}\u{11}\u{5}\u{11}\u{FF}\u{A}\u{11}'
  	'\u{3}\u{11}\u{3}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{6}'
  	'\u{12}\u{107}\u{A}\u{12}\u{D}\u{12}\u{E}\u{12}\u{108}\u{3}\u{12}\u{2}'
  	'\u{3}\u{1E}\u{13}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}'
  	'\u{16}\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{2}\u{6}\u{3}\u{2}\u{1F}'
  	'\u{21}\u{3}\u{2}\u{1D}\u{1E}\u{4}\u{2}\u{17}\u{18}\u{1B}\u{1C}\u{3}\u{2}'
  	'\u{15}\u{16}\u{2}\u{12A}\u{2}\u{26}\u{3}\u{2}\u{2}\u{2}\u{4}\u{2E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{6}\u{40}\u{3}\u{2}\u{2}\u{2}\u{8}\u{42}\u{3}\u{2}\u{2}'
  	'\u{2}\u{A}\u{6A}\u{3}\u{2}\u{2}\u{2}\u{C}\u{6C}\u{3}\u{2}\u{2}\u{2}\u{E}'
  	'\u{76}\u{3}\u{2}\u{2}\u{2}\u{10}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{12}\u{83}'
  	'\u{3}\u{2}\u{2}\u{2}\u{14}\u{88}\u{3}\u{2}\u{2}\u{2}\u{16}\u{93}\u{3}'
  	'\u{2}\u{2}\u{2}\u{18}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{A3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{D7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{20}\u{FC}\u{3}\u{2}\u{2}\u{2}\u{22}\u{106}\u{3}\u{2}\u{2}\u{2}'
  	'\u{24}\u{27}\u{5}\u{4}\u{3}\u{2}\u{25}\u{27}\u{5}\u{6}\u{4}\u{2}\u{26}'
  	'\u{24}\u{3}\u{2}\u{2}\u{2}\u{26}\u{25}\u{3}\u{2}\u{2}\u{2}\u{27}\u{28}'
  	'\u{3}\u{2}\u{2}\u{2}\u{28}\u{29}\u{7}\u{2}\u{2}\u{3}\u{29}\u{3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2A}\u{2D}\u{5}\u{6}\u{4}\u{2}\u{2B}\u{2D}\u{5}\u{14}'
  	'\u{B}\u{2}\u{2C}\u{2A}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{2B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{2D}\u{30}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{2C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2E}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{2F}\u{35}\u{3}\u{2}\u{2}\u{2}\u{30}'
  	'\u{2E}\u{3}\u{2}\u{2}\u{2}\u{31}\u{32}\u{7}\u{B}\u{2}\u{2}\u{32}\u{33}'
  	'\u{5}\u{1E}\u{10}\u{2}\u{33}\u{34}\u{7}\u{28}\u{2}\u{2}\u{34}\u{36}\u{3}'
  	'\u{2}\u{2}\u{2}\u{35}\u{31}\u{3}\u{2}\u{2}\u{2}\u{35}\u{36}\u{3}\u{2}'
  	'\u{2}\u{2}\u{36}\u{5}\u{3}\u{2}\u{2}\u{2}\u{37}\u{38}\u{5}\u{8}\u{5}'
  	'\u{2}\u{38}\u{39}\u{7}\u{28}\u{2}\u{2}\u{39}\u{41}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3A}\u{3B}\u{5}\u{A}\u{6}\u{2}\u{3B}\u{3C}\u{7}\u{28}\u{2}\u{2}\u{3C}'
  	'\u{41}\u{3}\u{2}\u{2}\u{2}\u{3D}\u{41}\u{5}\u{C}\u{7}\u{2}\u{3E}\u{41}'
  	'\u{5}\u{16}\u{C}\u{2}\u{3F}\u{41}\u{5}\u{18}\u{D}\u{2}\u{40}\u{37}\u{3}'
  	'\u{2}\u{2}\u{2}\u{40}\u{3A}\u{3}\u{2}\u{2}\u{2}\u{40}\u{3D}\u{3}\u{2}'
  	'\u{2}\u{2}\u{40}\u{3E}\u{3}\u{2}\u{2}\u{2}\u{40}\u{3F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{41}\u{7}\u{3}\u{2}\u{2}\u{2}\u{42}\u{44}\u{7}\u{30}\u{2}\u{2}'
  	'\u{43}\u{45}\u{5}\u{22}\u{12}\u{2}\u{44}\u{43}\u{3}\u{2}\u{2}\u{2}\u{44}'
  	'\u{45}\u{3}\u{2}\u{2}\u{2}\u{45}\u{46}\u{3}\u{2}\u{2}\u{2}\u{46}\u{47}'
  	'\u{7}\u{29}\u{2}\u{2}\u{47}\u{48}\u{5}\u{1E}\u{10}\u{2}\u{48}\u{9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49}\u{4A}\u{7}\u{2F}\u{2}\u{2}\u{4A}\u{4C}\u{7}\u{26}'
  	'\u{2}\u{2}\u{4B}\u{4D}\u{5}\u{1C}\u{F}\u{2}\u{4C}\u{4B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4E}\u{6B}\u{7}\u{27}\u{2}\u{2}\u{4F}\u{50}\u{7}\u{30}\u{2}\u{2}\u{50}'
  	'\u{52}\u{7}\u{26}\u{2}\u{2}\u{51}\u{53}\u{5}\u{1C}\u{F}\u{2}\u{52}\u{51}'
  	'\u{3}\u{2}\u{2}\u{2}\u{52}\u{53}\u{3}\u{2}\u{2}\u{2}\u{53}\u{54}\u{3}'
  	'\u{2}\u{2}\u{2}\u{54}\u{6B}\u{7}\u{27}\u{2}\u{2}\u{55}\u{56}\u{7}\u{3}'
  	'\u{2}\u{2}\u{56}\u{58}\u{7}\u{26}\u{2}\u{2}\u{57}\u{59}\u{5}\u{1E}\u{10}'
  	'\u{2}\u{58}\u{57}\u{3}\u{2}\u{2}\u{2}\u{58}\u{59}\u{3}\u{2}\u{2}\u{2}'
  	'\u{59}\u{5A}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{6B}\u{7}\u{27}\u{2}\u{2}\u{5B}'
  	'\u{5C}\u{7}\u{4}\u{2}\u{2}\u{5C}\u{5D}\u{7}\u{26}\u{2}\u{2}\u{5D}\u{5E}'
  	'\u{5}\u{1E}\u{10}\u{2}\u{5E}\u{5F}\u{7}\u{27}\u{2}\u{2}\u{5F}\u{6B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{60}\u{61}\u{7}\u{6}\u{2}\u{2}\u{61}\u{62}\u{7}\u{26}'
  	'\u{2}\u{2}\u{62}\u{63}\u{5}\u{1E}\u{10}\u{2}\u{63}\u{64}\u{7}\u{27}\u{2}'
  	'\u{2}\u{64}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{65}\u{66}\u{7}\u{7}\u{2}\u{2}'
  	'\u{66}\u{67}\u{7}\u{26}\u{2}\u{2}\u{67}\u{68}\u{5}\u{1E}\u{10}\u{2}\u{68}'
  	'\u{69}\u{7}\u{27}\u{2}\u{2}\u{69}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{49}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6A}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{55}\u{3}'
  	'\u{2}\u{2}\u{2}\u{6A}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{60}\u{3}\u{2}'
  	'\u{2}\u{2}\u{6A}\u{65}\u{3}\u{2}\u{2}\u{2}\u{6B}\u{B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6C}\u{70}\u{5}\u{E}\u{8}\u{2}\u{6D}\u{6F}\u{5}\u{10}\u{9}\u{2}'
  	'\u{6E}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{6F}\u{72}\u{3}\u{2}\u{2}\u{2}\u{70}'
  	'\u{6E}\u{3}\u{2}\u{2}\u{2}\u{70}\u{71}\u{3}\u{2}\u{2}\u{2}\u{71}\u{74}'
  	'\u{3}\u{2}\u{2}\u{2}\u{72}\u{70}\u{3}\u{2}\u{2}\u{2}\u{73}\u{75}\u{5}'
  	'\u{12}\u{A}\u{2}\u{74}\u{73}\u{3}\u{2}\u{2}\u{2}\u{74}\u{75}\u{3}\u{2}'
  	'\u{2}\u{2}\u{75}\u{D}\u{3}\u{2}\u{2}\u{2}\u{76}\u{77}\u{7}\u{9}\u{2}'
  	'\u{2}\u{77}\u{78}\u{5}\u{1E}\u{10}\u{2}\u{78}\u{79}\u{7}\u{22}\u{2}\u{2}'
  	'\u{79}\u{7A}\u{5}\u{4}\u{3}\u{2}\u{7A}\u{7B}\u{7}\u{23}\u{2}\u{2}\u{7B}'
  	'\u{F}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{7D}\u{7}\u{A}\u{2}\u{2}\u{7D}\u{7E}'
  	'\u{7}\u{9}\u{2}\u{2}\u{7E}\u{7F}\u{5}\u{1E}\u{10}\u{2}\u{7F}\u{80}\u{7}'
  	'\u{22}\u{2}\u{2}\u{80}\u{81}\u{5}\u{4}\u{3}\u{2}\u{81}\u{82}\u{7}\u{23}'
  	'\u{2}\u{2}\u{82}\u{11}\u{3}\u{2}\u{2}\u{2}\u{83}\u{84}\u{7}\u{A}\u{2}'
  	'\u{2}\u{84}\u{85}\u{7}\u{22}\u{2}\u{2}\u{85}\u{86}\u{5}\u{4}\u{3}\u{2}'
  	'\u{86}\u{87}\u{7}\u{23}\u{2}\u{2}\u{87}\u{13}\u{3}\u{2}\u{2}\u{2}\u{88}'
  	'\u{89}\u{7}\u{8}\u{2}\u{2}\u{89}\u{8A}\u{7}\u{30}\u{2}\u{2}\u{8A}\u{8C}'
  	'\u{7}\u{26}\u{2}\u{2}\u{8B}\u{8D}\u{5}\u{1A}\u{E}\u{2}\u{8C}\u{8B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{8C}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{8D}\u{8E}\u{3}\u{2}'
  	'\u{2}\u{2}\u{8E}\u{8F}\u{7}\u{27}\u{2}\u{2}\u{8F}\u{90}\u{7}\u{22}\u{2}'
  	'\u{2}\u{90}\u{91}\u{5}\u{4}\u{3}\u{2}\u{91}\u{92}\u{7}\u{23}\u{2}\u{2}'
  	'\u{92}\u{15}\u{3}\u{2}\u{2}\u{2}\u{93}\u{94}\u{7}\u{C}\u{2}\u{2}\u{94}'
  	'\u{95}\u{7}\u{30}\u{2}\u{2}\u{95}\u{96}\u{7}\u{29}\u{2}\u{2}\u{96}\u{97}'
  	'\u{5}\u{1E}\u{10}\u{2}\u{97}\u{98}\u{7}\u{E}\u{2}\u{2}\u{98}\u{99}\u{5}'
  	'\u{1E}\u{10}\u{2}\u{99}\u{9A}\u{7}\u{22}\u{2}\u{2}\u{9A}\u{9B}\u{5}\u{4}'
  	'\u{3}\u{2}\u{9B}\u{9C}\u{7}\u{23}\u{2}\u{2}\u{9C}\u{17}\u{3}\u{2}\u{2}'
  	'\u{2}\u{9D}\u{9E}\u{7}\u{D}\u{2}\u{2}\u{9E}\u{9F}\u{5}\u{1E}\u{10}\u{2}'
  	'\u{9F}\u{A0}\u{7}\u{22}\u{2}\u{2}\u{A0}\u{A1}\u{5}\u{4}\u{3}\u{2}\u{A1}'
  	'\u{A2}\u{7}\u{23}\u{2}\u{2}\u{A2}\u{19}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{A8}'
  	'\u{7}\u{30}\u{2}\u{2}\u{A4}\u{A5}\u{7}\u{2A}\u{2}\u{2}\u{A5}\u{A7}\u{7}'
  	'\u{30}\u{2}\u{2}\u{A6}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{A7}\u{AA}\u{3}\u{2}'
  	'\u{2}\u{2}\u{A8}\u{A6}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{A9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{A9}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{A8}\u{3}\u{2}\u{2}\u{2}'
  	'\u{AB}\u{B0}\u{5}\u{1E}\u{10}\u{2}\u{AC}\u{AD}\u{7}\u{2A}\u{2}\u{2}\u{AD}'
  	'\u{AF}\u{5}\u{1E}\u{10}\u{2}\u{AE}\u{AC}\u{3}\u{2}\u{2}\u{2}\u{AF}\u{B2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{B0}\u{AE}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{B1}\u{3}'
  	'\u{2}\u{2}\u{2}\u{B1}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{B0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{B3}\u{B4}\u{8}\u{10}\u{1}\u{2}\u{B4}\u{B5}\u{7}\u{1E}\u{2}'
  	'\u{2}\u{B5}\u{D8}\u{5}\u{1E}\u{10}\u{16}\u{B6}\u{B7}\u{7}\u{1A}\u{2}'
  	'\u{2}\u{B7}\u{D8}\u{5}\u{1E}\u{10}\u{15}\u{B8}\u{D8}\u{7}\u{2E}\u{2}'
  	'\u{2}\u{B9}\u{D8}\u{7}\u{2D}\u{2}\u{2}\u{BA}\u{D8}\u{7}\u{12}\u{2}\u{2}'
  	'\u{BB}\u{BD}\u{5}\u{A}\u{6}\u{2}\u{BC}\u{BE}\u{5}\u{22}\u{12}\u{2}\u{BD}'
  	'\u{BC}\u{3}\u{2}\u{2}\u{2}\u{BD}\u{BE}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{D8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{BF}\u{C1}\u{5}\u{20}\u{11}\u{2}\u{C0}\u{C2}\u{5}'
  	'\u{22}\u{12}\u{2}\u{C1}\u{C0}\u{3}\u{2}\u{2}\u{2}\u{C1}\u{C2}\u{3}\u{2}'
  	'\u{2}\u{2}\u{C2}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{C3}\u{C5}\u{7}\u{30}\u{2}'
  	'\u{2}\u{C4}\u{C6}\u{5}\u{22}\u{12}\u{2}\u{C5}\u{C4}\u{3}\u{2}\u{2}\u{2}'
  	'\u{C5}\u{C6}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{C7}'
  	'\u{C9}\u{7}\u{31}\u{2}\u{2}\u{C8}\u{CA}\u{5}\u{22}\u{12}\u{2}\u{C9}\u{C8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{C9}\u{CA}\u{3}\u{2}\u{2}\u{2}\u{CA}\u{D8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{CB}\u{CC}\u{7}\u{26}\u{2}\u{2}\u{CC}\u{CD}\u{5}\u{1E}'
  	'\u{10}\u{2}\u{CD}\u{CF}\u{7}\u{27}\u{2}\u{2}\u{CE}\u{D0}\u{5}\u{22}\u{12}'
  	'\u{2}\u{CF}\u{CE}\u{3}\u{2}\u{2}\u{2}\u{CF}\u{D0}\u{3}\u{2}\u{2}\u{2}'
  	'\u{D0}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{D2}\u{7}\u{5}\u{2}\u{2}\u{D2}'
  	'\u{D4}\u{7}\u{26}\u{2}\u{2}\u{D3}\u{D5}\u{7}\u{31}\u{2}\u{2}\u{D4}\u{D3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{D4}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{D5}\u{D6}\u{3}'
  	'\u{2}\u{2}\u{2}\u{D6}\u{D8}\u{7}\u{27}\u{2}\u{2}\u{D7}\u{B3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{D7}\u{B6}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{B8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{D7}\u{B9}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{BA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{D7}\u{BB}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{BF}\u{3}\u{2}\u{2}\u{2}\u{D7}'
  	'\u{C3}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{CB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{D7}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{F9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{D9}\u{DA}\u{C}\u{14}\u{2}\u{2}\u{DA}\u{DB}\u{7}\u{19}'
  	'\u{2}\u{2}\u{DB}\u{F8}\u{5}\u{1E}\u{10}\u{14}\u{DC}\u{DD}\u{C}\u{13}'
  	'\u{2}\u{2}\u{DD}\u{DE}\u{9}\u{2}\u{2}\u{2}\u{DE}\u{F8}\u{5}\u{1E}\u{10}'
  	'\u{14}\u{DF}\u{E0}\u{C}\u{12}\u{2}\u{2}\u{E0}\u{E1}\u{9}\u{3}\u{2}\u{2}'
  	'\u{E1}\u{F8}\u{5}\u{1E}\u{10}\u{13}\u{E2}\u{E3}\u{C}\u{11}\u{2}\u{2}'
  	'\u{E3}\u{E4}\u{9}\u{4}\u{2}\u{2}\u{E4}\u{F8}\u{5}\u{1E}\u{10}\u{12}\u{E5}'
  	'\u{E6}\u{C}\u{10}\u{2}\u{2}\u{E6}\u{E7}\u{9}\u{5}\u{2}\u{2}\u{E7}\u{F8}'
  	'\u{5}\u{1E}\u{10}\u{11}\u{E8}\u{E9}\u{C}\u{F}\u{2}\u{2}\u{E9}\u{EA}\u{7}'
  	'\u{14}\u{2}\u{2}\u{EA}\u{F8}\u{5}\u{1E}\u{10}\u{10}\u{EB}\u{EC}\u{C}'
  	'\u{E}\u{2}\u{2}\u{EC}\u{ED}\u{7}\u{13}\u{2}\u{2}\u{ED}\u{F8}\u{5}\u{1E}'
  	'\u{10}\u{F}\u{EE}\u{EF}\u{C}\u{D}\u{2}\u{2}\u{EF}\u{F0}\u{7}\u{2B}\u{2}'
  	'\u{2}\u{F0}\u{F1}\u{5}\u{1E}\u{10}\u{2}\u{F1}\u{F2}\u{7}\u{2C}\u{2}\u{2}'
  	'\u{F2}\u{F3}\u{5}\u{1E}\u{10}\u{E}\u{F3}\u{F8}\u{3}\u{2}\u{2}\u{2}\u{F4}'
  	'\u{F5}\u{C}\u{C}\u{2}\u{2}\u{F5}\u{F6}\u{7}\u{11}\u{2}\u{2}\u{F6}\u{F8}'
  	'\u{5}\u{1E}\u{10}\u{D}\u{F7}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{DC}\u{3}'
  	'\u{2}\u{2}\u{2}\u{F7}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{E2}\u{3}\u{2}'
  	'\u{2}\u{2}\u{F7}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{E8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{F7}\u{EB}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{EE}\u{3}\u{2}\u{2}\u{2}'
  	'\u{F7}\u{F4}\u{3}\u{2}\u{2}\u{2}\u{F8}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{F9}'
  	'\u{F7}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{FA}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{1F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{FB}\u{F9}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{FE}\u{7}'
  	'\u{24}\u{2}\u{2}\u{FD}\u{FF}\u{5}\u{1C}\u{F}\u{2}\u{FE}\u{FD}\u{3}\u{2}'
  	'\u{2}\u{2}\u{FE}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{FF}\u{100}\u{3}\u{2}\u{2}'
  	'\u{2}\u{100}\u{101}\u{7}\u{25}\u{2}\u{2}\u{101}\u{21}\u{3}\u{2}\u{2}'
  	'\u{2}\u{102}\u{103}\u{7}\u{24}\u{2}\u{2}\u{103}\u{104}\u{5}\u{1E}\u{10}'
  	'\u{2}\u{104}\u{105}\u{7}\u{25}\u{2}\u{2}\u{105}\u{107}\u{3}\u{2}\u{2}'
  	'\u{2}\u{106}\u{102}\u{3}\u{2}\u{2}\u{2}\u{107}\u{108}\u{3}\u{2}\u{2}'
  	'\u{2}\u{108}\u{106}\u{3}\u{2}\u{2}\u{2}\u{108}\u{109}\u{3}\u{2}\u{2}'
  	'\u{2}\u{109}\u{23}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{26}\u{2C}\u{2E}\u{35}'
  	'\u{40}\u{44}\u{4C}\u{52}\u{58}\u{6A}\u{70}\u{74}\u{8C}\u{A8}\u{B0}\u{BD}'
  	'\u{C1}\u{C5}\u{C9}\u{CF}\u{D4}\u{D7}\u{F7}\u{F9}\u{FE}\u{108}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}
class ParseContext extends ParserRuleContext {
  TerminalNode EOF() => getToken(TLParser.TOKEN_EOF, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  StatementContext statement() => getRuleContext<StatementContext>(0);
  ParseContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parse;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterParse(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitParse(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitParse(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BlockContext extends ParserRuleContext {
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext statement(int i) => getRuleContext<StatementContext>(i);
  List<FunctionDeclContext> functionDecls() => getRuleContexts<FunctionDeclContext>();
  FunctionDeclContext functionDecl(int i) => getRuleContext<FunctionDeclContext>(i);
  TerminalNode Return() => getToken(TLParser.TOKEN_Return, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode SColon() => getToken(TLParser.TOKEN_SColon, 0);
  BlockContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitBlock(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitBlock(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StatementContext extends ParserRuleContext {
  AssignmentContext assignment() => getRuleContext<AssignmentContext>(0);
  TerminalNode SColon() => getToken(TLParser.TOKEN_SColon, 0);
  FunctionCallContext functionCall() => getRuleContext<FunctionCallContext>(0);
  IfStatementContext ifStatement() => getRuleContext<IfStatementContext>(0);
  ForStatementContext forStatement() => getRuleContext<ForStatementContext>(0);
  WhileStatementContext whileStatement() => getRuleContext<WhileStatementContext>(0);
  StatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitStatement(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode Identifier() => getToken(TLParser.TOKEN_Identifier, 0);
  TerminalNode Assign() => getToken(TLParser.TOKEN_Assign, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  AssignmentContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitAssignment(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitAssignment(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FunctionCallContext extends ParserRuleContext {
  FunctionCallContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionCall;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class IfStatementContext extends ParserRuleContext {
  IfStatContext ifStat() => getRuleContext<IfStatContext>(0);
  List<ElseIfStatContext> elseIfStats() => getRuleContexts<ElseIfStatContext>();
  ElseIfStatContext elseIfStat(int i) => getRuleContext<ElseIfStatContext>(i);
  ElseStatContext elseStat() => getRuleContext<ElseStatContext>(0);
  IfStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIfStatement(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIfStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IfStatContext extends ParserRuleContext {
  TerminalNode If() => getToken(TLParser.TOKEN_If, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  IfStatContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStat;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIfStat(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIfStat(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIfStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ElseIfStatContext extends ParserRuleContext {
  TerminalNode Else() => getToken(TLParser.TOKEN_Else, 0);
  TerminalNode If() => getToken(TLParser.TOKEN_If, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  ElseIfStatContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseIfStat;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterElseIfStat(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitElseIfStat(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitElseIfStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ElseStatContext extends ParserRuleContext {
  TerminalNode Else() => getToken(TLParser.TOKEN_Else, 0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  ElseStatContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseStat;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterElseStat(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitElseStat(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitElseStat(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FunctionDeclContext extends ParserRuleContext {
  TerminalNode Def() => getToken(TLParser.TOKEN_Def, 0);
  TerminalNode Identifier() => getToken(TLParser.TOKEN_Identifier, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  IdListContext idList() => getRuleContext<IdListContext>(0);
  FunctionDeclContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDecl;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterFunctionDecl(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitFunctionDecl(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitFunctionDecl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ForStatementContext extends ParserRuleContext {
  TerminalNode For() => getToken(TLParser.TOKEN_For, 0);
  TerminalNode Identifier() => getToken(TLParser.TOKEN_Identifier, 0);
  TerminalNode Assign() => getToken(TLParser.TOKEN_Assign, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode To() => getToken(TLParser.TOKEN_To, 0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  ForStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterForStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitForStatement(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitForStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class WhileStatementContext extends ParserRuleContext {
  TerminalNode While() => getToken(TLParser.TOKEN_While, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode OBrace() => getToken(TLParser.TOKEN_OBrace, 0);
  BlockContext block() => getRuleContext<BlockContext>(0);
  TerminalNode CBrace() => getToken(TLParser.TOKEN_CBrace, 0);
  WhileStatementContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterWhileStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitWhileStatement(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitWhileStatement(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdListContext extends ParserRuleContext {
  List<TerminalNode> Identifiers() => getTokens(TLParser.TOKEN_Identifier);
  TerminalNode Identifier(int i) => getToken(TLParser.TOKEN_Identifier, i);
  List<TerminalNode> Commas() => getTokens(TLParser.TOKEN_Comma);
  TerminalNode Comma(int i) => getToken(TLParser.TOKEN_Comma, i);
  IdListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_idList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIdList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIdList(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIdList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExprListContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> Commas() => getTokens(TLParser.TOKEN_Comma);
  TerminalNode Comma(int i) => getToken(TLParser.TOKEN_Comma, i);
  ExprListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_exprList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterExprList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitExprList(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitExprList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ListContext extends ParserRuleContext {
  TerminalNode OBracket() => getToken(TLParser.TOKEN_OBracket, 0);
  TerminalNode CBracket() => getToken(TLParser.TOKEN_CBracket, 0);
  ExprListContext exprList() => getRuleContext<ExprListContext>(0);
  ListContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_list;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitList(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IndexesContext extends ParserRuleContext {
  List<TerminalNode> OBrackets() => getTokens(TLParser.TOKEN_OBracket);
  TerminalNode OBracket(int i) => getToken(TLParser.TOKEN_OBracket, i);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> CBrackets() => getTokens(TLParser.TOKEN_CBracket);
  TerminalNode CBracket(int i) => getToken(TLParser.TOKEN_CBracket, i);
  IndexesContext([ParserRuleContext parent, int invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_indexes;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIndexes(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIndexes(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIndexes(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AssertFunctionCallContext extends FunctionCallContext {
  TerminalNode Assert() => getToken(TLParser.TOKEN_Assert, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  AssertFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterAssertFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitAssertFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitAssertFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class SizeFunctionCallContext extends FunctionCallContext {
  TerminalNode Size() => getToken(TLParser.TOKEN_Size, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  SizeFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterSizeFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitSizeFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitSizeFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PrintlnFunctionCallContext extends FunctionCallContext {
  TerminalNode Println() => getToken(TLParser.TOKEN_Println, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  PrintlnFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterPrintlnFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitPrintlnFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitPrintlnFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class BuildInIdentifierFunctionCallContext extends FunctionCallContext {
  TerminalNode BuildIdentifier() => getToken(TLParser.TOKEN_BuildIdentifier, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  ExprListContext exprList() => getRuleContext<ExprListContext>(0);
  BuildInIdentifierFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterBuildInIdentifierFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitBuildInIdentifierFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitBuildInIdentifierFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdentifierFunctionCallContext extends FunctionCallContext {
  TerminalNode Identifier() => getToken(TLParser.TOKEN_Identifier, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  ExprListContext exprList() => getRuleContext<ExprListContext>(0);
  IdentifierFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIdentifierFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIdentifierFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIdentifierFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PrintFunctionCallContext extends FunctionCallContext {
  TerminalNode Print() => getToken(TLParser.TOKEN_Print, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  PrintFunctionCallContext(FunctionCallContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterPrintFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitPrintFunctionCall(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitPrintFunctionCall(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}class BoolExpressionContext extends ExpressionContext {
  TerminalNode Bool() => getToken(TLParser.TOKEN_Bool, 0);
  BoolExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterBoolExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitBoolExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitBoolExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class NumberExpressionContext extends ExpressionContext {
  TerminalNode Number() => getToken(TLParser.TOKEN_Number, 0);
  NumberExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterNumberExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitNumberExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitNumberExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class IdentifierExpressionContext extends ExpressionContext {
  TerminalNode Identifier() => getToken(TLParser.TOKEN_Identifier, 0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  IdentifierExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterIdentifierExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitIdentifierExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitIdentifierExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class NotExpressionContext extends ExpressionContext {
  TerminalNode Excl() => getToken(TLParser.TOKEN_Excl, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  NotExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterNotExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitNotExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitNotExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class OrExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode Or() => getToken(TLParser.TOKEN_Or, 0);
  OrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterOrExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitOrExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitOrExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class UnaryMinusExpressionContext extends ExpressionContext {
  TerminalNode Subtract() => getToken(TLParser.TOKEN_Subtract, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  UnaryMinusExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterUnaryMinusExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitUnaryMinusExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitUnaryMinusExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class PowerExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode Pow() => getToken(TLParser.TOKEN_Pow, 0);
  PowerExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterPowerExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitPowerExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitPowerExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class EqExpressionContext extends ExpressionContext {
  Token op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode Equals() => getToken(TLParser.TOKEN_Equals, 0);
  TerminalNode NEquals() => getToken(TLParser.TOKEN_NEquals, 0);
  EqExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterEqExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitEqExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitEqExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AndExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode And() => getToken(TLParser.TOKEN_And, 0);
  AndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterAndExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitAndExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitAndExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class InExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode In() => getToken(TLParser.TOKEN_In, 0);
  InExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterInExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitInExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitInExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class StringExpressionContext extends ExpressionContext {
  TerminalNode String() => getToken(TLParser.TOKEN_String, 0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  StringExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterStringExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitStringExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitStringExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ExpressionExpressionContext extends ExpressionContext {
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  ExpressionExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterExpressionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitExpressionExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitExpressionExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AddExpressionContext extends ExpressionContext {
  Token op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode Add() => getToken(TLParser.TOKEN_Add, 0);
  TerminalNode Subtract() => getToken(TLParser.TOKEN_Subtract, 0);
  AddExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterAddExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitAddExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitAddExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class CompExpressionContext extends ExpressionContext {
  Token op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode GTEquals() => getToken(TLParser.TOKEN_GTEquals, 0);
  TerminalNode LTEquals() => getToken(TLParser.TOKEN_LTEquals, 0);
  TerminalNode GT() => getToken(TLParser.TOKEN_GT, 0);
  TerminalNode LT() => getToken(TLParser.TOKEN_LT, 0);
  CompExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterCompExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitCompExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitCompExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class NullExpressionContext extends ExpressionContext {
  TerminalNode Null() => getToken(TLParser.TOKEN_Null, 0);
  NullExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterNullExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitNullExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitNullExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class FunctionCallExpressionContext extends ExpressionContext {
  FunctionCallContext functionCall() => getRuleContext<FunctionCallContext>(0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  FunctionCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterFunctionCallExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitFunctionCallExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitFunctionCallExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class MultExpressionContext extends ExpressionContext {
  Token op;
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode Multiply() => getToken(TLParser.TOKEN_Multiply, 0);
  TerminalNode Divide() => getToken(TLParser.TOKEN_Divide, 0);
  TerminalNode Modulus() => getToken(TLParser.TOKEN_Modulus, 0);
  MultExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterMultExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitMultExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitMultExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ListExpressionContext extends ExpressionContext {
  ListContext list() => getRuleContext<ListContext>(0);
  IndexesContext indexes() => getRuleContext<IndexesContext>(0);
  ListExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterListExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitListExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitListExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class TernaryExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode QMark() => getToken(TLParser.TOKEN_QMark, 0);
  TerminalNode Colon() => getToken(TLParser.TOKEN_Colon, 0);
  TernaryExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterTernaryExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitTernaryExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitTernaryExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class InputExpressionContext extends ExpressionContext {
  TerminalNode Input() => getToken(TLParser.TOKEN_Input, 0);
  TerminalNode OParen() => getToken(TLParser.TOKEN_OParen, 0);
  TerminalNode CParen() => getToken(TLParser.TOKEN_CParen, 0);
  TerminalNode String() => getToken(TLParser.TOKEN_String, 0);
  InputExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.enterInputExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is TLListener) listener.exitInputExpression(this);
  }
  @override
  T accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is TLVisitor<T>) {
     return visitor.visitInputExpression(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}