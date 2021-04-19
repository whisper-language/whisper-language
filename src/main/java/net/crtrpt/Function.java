package net.crtrpt;

import java.util.List;
import java.util.Map;

import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.TerminalNode;


public class Function {

    private Scope parentScope;
    private List<TerminalNode> params;
    private ParseTree block;

    public Function(Scope parentScope, List<TerminalNode> params, ParseTree block) {
        this.parentScope = parentScope;
        this.params = params;
        this.block = block;
    }
    
    public TLValue invoke(List<TLValue> args, Map<String, Function> functions) {
        if (args.size() != this.params.size()) {
            throw new RuntimeException("Illegal Function call");
        }
        Scope scopeNext = new Scope(parentScope, true); // create function scope

        for (int i = 0; i < this.params.size(); i++) {
            TLValue value = args.get(i);
            scopeNext.assignParam(this.params.get(i).getText(), value);
        }
        EvalVisitor evalVistorNext = new EvalVisitor(scopeNext,functions);
        
        TLValue ret = TLValue.VOID;
        try {
        	evalVistorNext.visit(this.block);
        } catch (ReturnValue returnValue) {
        	ret = returnValue.value;
        }
        return ret;
    }
}
