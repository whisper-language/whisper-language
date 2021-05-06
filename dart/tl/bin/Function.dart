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

  TLValue invoke(
      List<TLValue> args, Map<String, Function> functions, buildFunction) {
    if (args.length != this.params.length) {
      throw new EvalException('Illegal Function call');
    }
    Scope scopeNext = new Scope(parentScope, true); // create function scope

    for (int i = 0; i < this.params.length; i++) {
      TLValue value = args[i];
      //获取每个函数的参数值

      scopeNext.assignParam(this.params[i].text, value);
    }
    EvalVisitor evalVistorNext =
        new EvalVisitor(scopeNext, functions, buildFunction);

    TLValue ret = TLValue.VOID;
    try {
      evalVistorNext.visit(this.block);
    } on ReturnValue catch (e) {
      ret = e.value;
    }
    return ret;
  }
}
