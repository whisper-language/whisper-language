package net.crtrpt.whisper;

import java.util.*;

import net.crtrpt.whisper.gen.TLLexer;
import net.crtrpt.whisper.gen.TLParser;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

public class Main {
    public static void main(String[] args) {
        try {
            TLLexer lexer = new TLLexer(CharStreams.fromFileName("case/main.whl"));
            TLParser parser = new TLParser(new CommonTokenStream(lexer));
            parser.setBuildParseTree(true);
            ParseTree tree = parser.parse();
            
            Scope scope = new Scope();
            Map<String, BuildInFunction> functions = new HashMap<>();
            //增加内建函数
            functions.put("@sum", argv -> new TLValue(argv.stream().mapToLong(TLValue::asByte).sum()));

            EvalVisitor visitor = new EvalVisitor(scope, new HashMap<>(),functions);
            visitor.visit(tree);
        } catch (Exception e) {
            if (e.getMessage() != null) {
                System.err.println(e.getMessage());
            } else {
                e.printStackTrace();
            }
        }
    }
}
