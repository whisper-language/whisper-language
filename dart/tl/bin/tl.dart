import 'package:antlr4/antlr4.dart';

import 'gen/TLLexer.dart';
import 'gen/TLParser.dart';

void main(List<String> arguments) {
  Future<InputStream> a=InputStream.fromPath("../../test.pg");
  a.then((value) {
    TLLexer lexer = new TLLexer(value);
    TLParser parser = new TLParser(new CommonTokenStream(lexer));
    // parser.buildParseTree(true);
    // ParseTree tree = parser.parse();
  });


}
