//
//  main.swift
//  tl
//
//  Created by jzx on 2021/5/6.
//
import Antlr4;

func main() {
    var lexer =  TLLexer(CharStreams.fromFileName("test.pg"));
    var parser =  TLParser(CommonTokenStream(lexer));
    parser.setBuildParseTree(true);
    var  tree = parser.parse();
    var visitor = EvalVisitor(scope, [String: Any](),[String: Any]());
    visitor.visit(tree);
}

main();

