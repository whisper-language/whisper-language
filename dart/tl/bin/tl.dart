import 'package:antlr4/antlr4.dart';

import 'EvalVisitor.dart';
import 'gen/TLLexer.dart';
import 'gen/TLParser.dart';

void main(List<String> arguments) {
  var a=InputStream.fromPath('../../test1.pg');
  a.then((value) {
    var lexer = TLLexer(value);
    var parser = TLParser(CommonTokenStream(lexer));
    parser.buildParseTree;
    ParseTree tree = parser.parse();
    var visitor = EvalVisitor(null, new Map(),new Map());
    visitor.visit(tree);
  });


}
