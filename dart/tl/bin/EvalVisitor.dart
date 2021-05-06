import 'BuildInFunction.dart';
import 'Function.dart';
import 'ReturnValue.dart';
import 'Scope.dart';
import 'TLValue.dart';
import 'gen/TLBaseVisitor.dart';

class EvalVisitor extends TLBaseVisitor<TLValue> {
  ReturnValue returnValue = new ReturnValue();
  Scope scope;
  Map<String, Function> functions = new Map();
  Map<String, BuildInFunction> buildFunction = new Map();

  EvalVisitor(this.scope, Map<String, Function> this.functions,
      Map<String, BuildInFunction> this.buildFunction);
}
