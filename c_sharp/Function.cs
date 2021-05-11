using Antlr4.Runtime.Tree;
using System;
using System.Collections.Generic;
using whisper_language.gen;

namespace whisper_language
{
    class Function
    {
        private Scope parentScope;
        private List<ITerminalNode> param;
        private IParseTree block;

        public Function(Scope parentScope, List<ITerminalNode> param, IParseTree block)
        {
            this.parentScope = parentScope;
            this.param = param;
            this.block = block;
        }

        public TLValue invoke(List<TLValue> args, Dictionary<String,Function> functions, Dictionary<String, BuildInFunction> buildFunction)
        {
            if (args.Count != this.param.Count) {
                throw new Exception("Illegal Function call");
            }
            Scope scopeNext = new Scope(parentScope, true); // create function scope

            for (int i = 0; i < this.param.Count; i++) {
                TLValue value = args[i];
                //获取每个函数的参数值
                scopeNext.assignParam(this.param[i].GetText(), value);
            }
            EvalVisitor evalVistorNext = new EvalVisitor(scopeNext, functions, buildFunction);

            TLValue ret = TLValue.VOID;
            try
            {
                evalVistorNext.Visit(block);
            }
            catch (ReturnValue returnValue)
            {
                ret = returnValue.value;
            }
            return ret;
        }
    }
}
