import Antlr4;

func main() throws{
    do {
        let source=try ANTLRFileStream.init("test.pg");
        let lexer =  TLLexer( source);
        let parser =  try TLParser(CommonTokenStream(lexer));
        parser.setBuildParseTree(true);
        let tree = try parser.parse();
        let visitor = EvalVisitor(parent:nil,
                                  function: Dictionary<String, Function>(),
                                  buildingFunction: Dictionary<String, BuildInFunction>());
        var _ = visitor.visit(tree);
    }catch let error as TLError {
        throw error
    }
}

print(#file)
try main();


