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

  TLValue invoke(List<TLValue> args, Map<String, Function> functions, buildFunction) {
    if (args.length != params.length) {
      throw EvalException(msg: "Illegal Function call");
    }
    var scopeNext = Scope(parentScope, true); // create function scope

    for (var i = 0; i < params.length; i++) {
      var value = args[i];
      //获取每个函数的参数值
      scopeNext.assignParam(this.params[i].text, value);
    }
    EvalVisitor evalVistorNext = new EvalVisitor(scopeNext, functions, buildFunction);

    var ret = TLValue.VOID;
    try {
      evalVistorNext.visit(this.block);
    } on ReturnValue catch (e) {
      ret = e.value;
    }
    return ret;
  }
}
