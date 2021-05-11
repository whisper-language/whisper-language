import 'dart:math';

import 'package:antlr4/antlr4.dart';

import 'EvalException.dart';
import 'EvalVisitor.dart';
import 'ReturnValue.dart';
import 'Scope.dart';
import 'TLValue.dart';

class Function {
  Scope parentScope;
  List<TerminalNode> params;
  ParseTree block;

  Function(this.parentScope, this.params, this.block);

  TLValue invoke(List<TLValue> args, Map<dynamic, dynamic> functions, buildFunction) {
    if (args.length != params.length) {
      throw EvalException(msg: '函数调用出错');
    }

    var scopeNext = Scope(parentScope, true); // create function scope

    for (var i = 0; i < params.length; i++) {
      var value = args[i];
      //获取每个函数的参数值
      scopeNext.assignParam(params[i].text, value);
    }
    var evalVistorNext = EvalVisitor(scopeNext, functions, buildFunction);

    var ret = TLValue.VOID;
    try {
      evalVistorNext.visit(block);
    } on ReturnValue catch (e) {
      ret = e.value;
    }
    return ret;
  }
}
