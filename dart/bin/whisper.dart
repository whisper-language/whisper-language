import 'package:antlr4/antlr4.dart';

import 'BuildInFunction.dart';
import 'EvalVisitor.dart';
import 'Scope.dart';
import 'TLValue.dart';
import 'gen/TLLexer.dart';
import 'gen/TLParser.dart';

class sum implements BuildInFunction {
  @override
  TLValue invoke(List<TLValue> argv) {
    var s = 0.0;
    argv.forEach((element) {
      s += element.value;
    });
    return TLValue(v: s);
  }
}

void main(List<String> arguments) {
  var a = InputStream.fromPath('../../test1.pg');
  a.then((value) {
    var lexer = TLLexer(value);
    var parser = TLParser(CommonTokenStream(lexer));
    parser.buildParseTree;
    ParseTree tree = parser.parse();
    var functions = {};
    functions['@sum'] = sum();
    var visitor = EvalVisitor(Scope(null, false), {}, functions);
    visitor.visit(tree);
  });
}
