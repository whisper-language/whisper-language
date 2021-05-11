import 'dart:io';
import 'dart:math';

import 'package:antlr4/antlr4.dart';

import 'BuildInFunction.dart';
import 'EvalException.dart';
import 'Function.dart';
import 'ReturnValue.dart';
import 'Scope.dart';
import 'TLValue.dart';
import 'gen/TLBaseVisitor.dart';
import 'gen/TLLexer.dart';
import 'gen/TLParser.dart';

class EvalVisitor extends TLBaseVisitor<TLValue> {
  ReturnValue returnValue = ReturnValue();
  Scope scope;
  Map<dynamic, dynamic> functions = {};
  Map<dynamic, dynamic> buildFunction = {};

  EvalVisitor(scope, functions, buildFunction);

  @override
  TLValue visitFunctionDecl(FunctionDeclContext ctx) {
    var params = ctx.idList() != null ? ctx.idList().Identifiers() : <TerminalNode>[];
    ParseTree block = ctx.block();
    var id = ctx.Identifier().text + params.length.toString();
    // TODO: throw exception if function is already defined?
    functions[id] = Function(scope, params, block);
    return TLValue.VOID;
  }

  @override
  TLValue visitList(ListContext ctx) {
    var list = <TLValue>[];
    if (ctx.exprList() != null) {
      for (var ex in ctx.exprList().expressions()) {
        list.add(visit(ex));
      }
    }
    return TLValue(v: list);
  }

  @override
  TLValue visitUnaryMinusExpression(UnaryMinusExpressionContext ctx) {
    var v = visit(ctx.expression());
    if (!v.isNumber()) {
      throw EvalException(ctx: ctx);
    }
    return TLValue(v: -1 * v.asDouble());
  }

  @override
  TLValue visitNotExpression(NotExpressionContext ctx) {
    var v = visit(ctx.expression());
    if (!v.isBoolean()) {
      throw EvalException(ctx: ctx);
    }
    return TLValue(v: !v.asBoolean());
  }

  @override
  TLValue visitPowerExpression(PowerExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return TLValue(v: pow(lhs.asDouble(), rhs.asDouble()));
    }
    throw EvalException(ctx: ctx);
  }

  @override
  TLValue visitMultExpression(MultExpressionContext ctx) {
    switch (ctx.op.type) {
      case TLLexer.TOKEN_Multiply:
        return multiply(ctx);
      case TLLexer.TOKEN_Divide:
        return divide(ctx);
      case TLLexer.TOKEN_Modulus:
        return modulus(ctx);
      default:
        throw EvalException(msg: '位置哦的操作符类型: ${ctx.op.type.toString()}');
    }
  }

  @override
  TLValue visitAddExpression(AddExpressionContext ctx) {
    switch (ctx.op.type) {
      case TLLexer.TOKEN_Add:
        return add(ctx);
      case TLLexer.TOKEN_Subtract:
        return subtract(ctx);
      default:
        throw EvalException(msg: '未知的操作符: ' + ctx.op.type.toString());
    }
  }

  @override
  TLValue visitCompExpression(CompExpressionContext ctx) {
    switch (ctx.op.type) {
      case TLLexer.TOKEN_LT:
        return lt(ctx);
      case TLLexer.TOKEN_LTEquals:
        return ltEq(ctx);
      case TLLexer.TOKEN_GT:
        return gt(ctx);
      case TLLexer.TOKEN_GTEquals:
        return gtEq(ctx);
      default:
        throw EvalException(msg: '未知的操作符类型: ${ctx.op.type.toString()}');
    }
  }

  @override
  TLValue visitEqExpression(EqExpressionContext ctx) {
    switch (ctx.op.type) {
      case TLLexer.TOKEN_Equals:
        return eq(ctx);
      case TLLexer.TOKEN_NEquals:
        return nEq(ctx);
      default:
        throw EvalException(msg: '未知的操作符类型: ${ctx.op.type.toString()}');
    }
  }

  TLValue multiply(MultExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs == null || rhs == null) {
      throw EvalException(ctx: ctx);
    }

    // number * number
    if (lhs.isNumber() && rhs.isNumber()) {
      return TLValue(v: lhs.asDouble() * rhs.asDouble());
    }

    // string * number
    if (lhs.isString() && rhs.isNumber()) {
      var str = '';
      var stop = rhs.asDouble().toInt();

      for (var i = 0; i < stop; i++) {
        str += lhs.asString();
      }
      return TLValue(v: str);
    }

    // list * number
    if (lhs.isList() && rhs.isNumber()) {
      var total = <TLValue>[];
      var stop = rhs.asDouble().toInt();
      for (var i = 0; i < stop; i++) {
        total.addAll(lhs.asList());
      }
      return  TLValue(v: total);
    }

    throw  EvalException(ctx: ctx);
  }

  TLValue divide(MultExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() / rhs.asDouble());
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue modulus(MultExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() % rhs.asDouble());
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue add(AddExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs == null || rhs == null) {
      throw EvalException(ctx: ctx);
    }

    // number + number
    if (lhs.isNumber() && rhs.isNumber()) {
      return TLValue(v: lhs.asDouble() + rhs.asDouble());
    }

    // list + any
    if (lhs.isList()) {
      var list = lhs.asList();
      list.add(rhs);
      return TLValue(v: list);
    }

    // string + any
    if (lhs.isString()) {
      return  TLValue(v: lhs.asString() + '' + rhs.toString());
    }

    // any + string
    if (rhs.isString()) {
      return  TLValue(v: lhs.toString() + '' + rhs.asString());
    }

    return  TLValue(v: lhs.toString() + rhs.toString());
  }

  TLValue subtract(AddExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() - rhs.asDouble());
    }
    if (lhs.isList()) {
      var list = lhs.asList();
      list.remove(rhs);
      return  TLValue(v: list);
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue gtEq(CompExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() >= rhs.asDouble());
    }
    if (lhs.isString() && rhs.isString()) {
      return  TLValue(v: lhs.asString().compareTo(rhs.asString()) >= 0);
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue ltEq(CompExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() <= rhs.asDouble());
    }
    if (lhs.isString() && rhs.isString()) {
      return  TLValue(v: lhs.asString().compareTo(rhs.asString()) <= 0);
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue gt(CompExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() > rhs.asDouble());
    }
    if (lhs.isString() && rhs.isString()) {
      return  TLValue(v: lhs.asString().compareTo(rhs.asString()) > 0);
    }
    throw  EvalException(ctx: ctx);
  }

  TLValue lt(CompExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs.isNumber() && rhs.isNumber()) {
      return  TLValue(v: lhs.asDouble() < rhs.asDouble());
    }
    if (lhs.isString() && rhs.isString()) {
      return  TLValue(v: lhs.asString().compareTo(rhs.asString()) < 0);
    }
    throw EvalException(ctx: ctx);
  }

  TLValue eq(EqExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    if (lhs == null) {
      throw EvalException(ctx: ctx);
    }
    return TLValue(v: lhs.equals(rhs));
  }

  TLValue nEq(EqExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));
    return TLValue(v: !lhs.equals(rhs));
  }

  @override
  TLValue visitAndExpression(AndExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));

    if (!lhs.isBoolean() || !rhs.isBoolean()) {
      throw EvalException(ctx: ctx);
    }
    return TLValue(v: lhs.asBoolean() && rhs.asBoolean());
  }

  @override
  TLValue visitOrExpression(OrExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));

    if (!lhs.isBoolean() || !rhs.isBoolean()) {
      throw EvalException(ctx: ctx);
    }
    return TLValue(v: lhs.asBoolean() || rhs.asBoolean());
  }

  @override
  TLValue visitTernaryExpression(TernaryExpressionContext ctx) {
    var condition = visit(ctx.expression(0));
    if (condition.asBoolean()) {
      return visit(ctx.expression(1));
    } else {
      return visit(ctx.expression(2));
    }
  }

  // expression In expression                 #inExpression
  @override
  TLValue visitInExpression(InExpressionContext ctx) {
    var lhs = visit(ctx.expression(0));
    var rhs = visit(ctx.expression(1));

    if (rhs.isList()) {
      for (var val in rhs.asList()) {
        if (val.equals(lhs)) {
          return TLValue(v: true);
        }
      }
      return TLValue(v: false);
    }
    throw EvalException(ctx: ctx);
  }

// Number                                   #numberExpression
  @override
  TLValue visitNumberExpression(NumberExpressionContext ctx) {
    return  TLValue(v: double.parse(ctx.text));
  }

//
// Bool                                     #boolExpression
  @override
  TLValue visitBoolExpression(BoolExpressionContext ctx) {
    return  TLValue(v: ctx.text.toLowerCase() == 'true');
  }

//
// Null                                     #nullExpression
  @override
  TLValue visitNullExpression(NullExpressionContext ctx) {
    return TLValue.NULL;
  }

//
  TLValue resolveIndexes(TLValue val, List<ExpressionContext> indexes) {
    print("查找${val}");
    for (var ec in indexes) {
      var idx = visit(ec);
      if (!idx.isNumber() || (!val.isList() && !val.isString())) {
        throw  EvalException(msg: 'Problem resolving indexes on ' + val.toString() + ' at ' + idx.toString(), ctx: ec);
      }
      var i = idx.asDouble().toInt();
      if (val.isString()) {
        val =  TLValue(v: val.asString().substring(i, i + 1));
      } else {
        val = val.asList()[i];
      }
    }
    return val;
  }

//
  void setAtIndex(ParserRuleContext ctx, List<ExpressionContext> indexes, TLValue val, TLValue Val) {
    if (!val.isList()) {
      throw  EvalException(ctx: ctx);
    }
    for (var i = 0; i < indexes.length - 1; i++) {
      var idx = visit(indexes[i]);
      if (!idx.isNumber()) {
        throw EvalException(ctx: ctx);
      }
      val = val.asList()[idx.asDouble().toInt()];
    }
    var idx = visit(indexes[indexes.length - 1]);
    if (!idx.isNumber()) {
      throw EvalException(ctx: ctx);
    }
    val.asList()[idx.asDouble().toInt()] = Val;
  }

//
// functionCall indexes?                    #functionCallExpression 参数调用
  @override
  TLValue visitFunctionCallExpression(FunctionCallExpressionContext ctx) {
    var val = visit(ctx.functionCall());
    if (ctx.indexes() != null) {
      var exps = ctx.indexes().expressions();
      val = resolveIndexes(val, exps);
    }
    return val;
  }

//
// list indexes?                            #listExpression
  @override
  TLValue visitListExpression(ListExpressionContext ctx) {
    var val = visit(ctx.list());
    if (ctx.indexes() != null) {
      var exps = ctx.indexes().expressions();
      val = resolveIndexes(val, exps);
    }
    return val;
  }

// Identifier indexes?                      #identifierExpression
  @override
  TLValue visitIdentifierExpression(IdentifierExpressionContext ctx) {
    var id = ctx.Identifier().text;

    var val = scope.resolve(id, true);

    if (ctx.indexes() != null) {
      var exps = ctx.indexes().expressions();
      val = resolveIndexes(val, exps);
    }
    return val;
  }

// String indexes?                          #stringExpression
  @override
  TLValue visitStringExpression(StringExpressionContext ctx) {
    var text = ctx.text;
    text = text.substring(1, text.length - 1).replaceAll('\\\\(.)', '${1}');
    var val =  TLValue(v: text);
    if (ctx.indexes() != null) {
      var exps = ctx.indexes().expressions();
      val = resolveIndexes(val, exps);
    }
    return val;
  }

//
// '(' expression ')' indexes?              #expressionExpression
  @override
  TLValue visitExpressionExpression(ExpressionExpressionContext ctx) {
    var val = visit(ctx.expression());
    if (ctx.indexes() != null) {
      var exps = ctx.indexes().expressions();
      val = resolveIndexes(val, exps);
    }
    return val;
  }

//
// Input '(' String? ')'                    #inputExpression
// @override
//  TLValue visitInputExpression(InputExpressionContext ctx) {
//   TerminalNode inputString = ctx.String();
//   try {
//     if (inputString != null) {
//       String text = inputString.text;
//       text = text.substring(1, text.length - 1).replaceAll('\\\\(.)', "$1");
//       return  TLValue( String(Files.readAllBytes(Paths.get(text))));
//     } else {
//       BufferedReader buffer =  BufferedReader( InputStreamReader(System.in));
//       return  TLValue(buffer.readLine());
//     }
//   } on Exception catch e {
//     throw  RuntimeException(e);
//   }
// }
//
//
// assignment
// : Identifier indexes? '=' expression
// ;
  @override
  TLValue visitAssignment(AssignmentContext ctx) {
    var Val = visit(ctx.expression());
    if (ctx.indexes() != null) {
      var val = scope.resolve(ctx.Identifier().text, true);
      var exps = ctx.indexes().expressions();
      setAtIndex(ctx, exps, val, Val);
    } else {
      var id = ctx.Identifier().text;
      scope.assign(id, Val);
    }
    return TLValue.VOID;
  }

//
  @override
  TLValue visitBuildInIdentifierFunctionCall(BuildInIdentifierFunctionCallContext ctx) {
    var params = ctx.exprList() != null ? ctx.exprList().expressions() : [];
    var id = ctx.BuildIdentifier().text;
    BuildInFunction function;
    if ((function = buildFunction[id]) != null) {
      var args = <TLValue>[];
      for (var param in params) {
        args.add(visit(param));
      }
      return function.invoke(args);
    }
    throw EvalException(msg: '没有找到方法 $id', ctx: ctx);
  }

//
// Identifier '(' exprList? ')' #identifierFunctionCall
  @override
  TLValue visitIdentifierFunctionCall(IdentifierFunctionCallContext ctx) {
    var params = ctx.exprList() != null ? ctx.exprList().expressions() : [];
    var id = ctx.Identifier().text + params.length.toString();
    Function function;

    if ((function = functions[id]) != null) {
      var args = <TLValue>[];
      for (ExpressionContext param in params) {
        args.add(visit(param));
      }
      return function.invoke(args, functions, buildFunction);
    } else {
      throw  EvalException(ctx: ctx);
    }
  }

//
// Println '(' expression? ')'  #printlnFunctionCall
  @override
  TLValue visitPrintlnFunctionCall(PrintlnFunctionCallContext ctx) {
    if (ctx.expression() != null) {
      print(visit(ctx.expression()));
    } else {
      print('\r\n');
    }
    return TLValue.VOID;
  }

//
// Print '(' expression ')'     #printFunctionCall
  @override
  TLValue visitPrintFunctionCall(PrintFunctionCallContext ctx) {
    print(visit(ctx.expression()));
    return TLValue.VOID;
  }

//
// Assert '(' expression ')'    #assertFunctionCall
  @override
  TLValue visitAssertFunctionCall(AssertFunctionCallContext ctx) {
    var value = visit(ctx.expression());

    if (!value.isBoolean()) {
      throw EvalException(ctx: ctx);
    }

    if (!value.asBoolean()) {
      var f = File(ctx.start.inputStream.sourceName);
      throw AssertionError('Assert failed:' + ctx.expression().text + ' (' + f.path.toString() + ':' + ctx.start.line.toString() + ')');
    }

    return TLValue.VOID;
  }

//
// Size '(' expression ')'      #sizeFunctionCall
  @override
  TLValue visitSizeFunctionCall(SizeFunctionCallContext ctx) {
    var value = visit(ctx.expression());

    if (value.isString()) {
      return  TLValue(v: value.asString().length);
    }

    if (value.isList()) {
      return  TLValue(v: value.asList().length);
    }

    throw  EvalException(ctx: ctx);
  }

//
// ifStatement
//  : ifStat elseIfStat* elseStat? End
//  ;
//
// ifStat
//  : If expression Do block
//  ;
//
// elseIfStat
//  : Else If expression Do block
//  ;
//
// elseStat
//  : Else Do block
//  ;
  @override
  TLValue visitIfStatement(IfStatementContext ctx) {
    // if ...
    if (visit(ctx.ifStat().expression()).asBoolean()) {
      return visit(ctx.ifStat().block());
    }

    // else if ...
    for (var i = 0; i < ctx.elseIfStats().length; i++) {
      if (visit(ctx.elseIfStat(i).expression()).asBoolean()) {
        return visit(ctx.elseIfStat(i).block());
      }
    }

    // else ...
    if (ctx.elseStat() != null) {
      return visit(ctx.elseStat().block());
    }

    return TLValue.VOID;
  }

// block
// : (statement | functionDecl)* (Return expression)?
// ;
  @override
  TLValue visitBlock(BlockContext ctx) {
    //新建一个作用域
    scope = Scope(scope, false); // create  local scope
    for (var fdx in ctx.functionDecls()) {
      visit(fdx);
    }
    for (var sx in ctx.statements()) {
      visit(sx);
    }
    ExpressionContext ex;
    if ((ex = ctx.expression()) != null) {
      returnValue.value = visit(ex);
      scope = scope.parent;
      throw returnValue;
    }
    scope = scope.parent;
    return TLValue.VOID;
  }

//
// forStatement
// : For Identifier '=' expression To expression OBrace block CBrace
// ;
  @override
  TLValue visitForStatement(ForStatementContext ctx) {
    var start = visit(ctx.expression(0)).asDouble().toInt();
    var stop = visit(ctx.expression(1)).asDouble().toInt();
    for (var i = start; i <= stop; i++) {
      scope.assign(ctx.Identifier().text,  TLValue(v: i));
      var returnValue = visit(ctx.block());

      if (returnValue != TLValue.VOID) {
        return returnValue;
      }
    }
    return TLValue.VOID;
  }

//
// whileStatement
// : While expression OBrace block CBrace
// ;
  @override
  TLValue visitWhileStatement(WhileStatementContext ctx) {
    while (visit(ctx.expression()).asBoolean()) {
      var returnValue = visit(ctx.block());
      if (returnValue != TLValue.VOID) {
        return returnValue;
      }
    }
    return TLValue.VOID;
  }
}
