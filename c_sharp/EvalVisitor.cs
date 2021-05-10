using Antlr4.Runtime.Tree;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using whisper_language.gen;

namespace whisper_language
{
    class EvalVisitor : TLBaseVisitor<TLValue>
    {
        private Scope scope;

        private Dictionary<string, Function> function;

        private Dictionary<string, BuildInFunction> buildInfunction;

        public EvalVisitor(Scope scope, Dictionary<string, Function> function, Dictionary<string, BuildInFunction> buildInfunction)
        {
            this.scope = scope;
            this.function = function;
            this.buildInfunction = buildInfunction;
        }

        override public TLValue VisitFunctionDecl(TLParser.FunctionDeclContext ctx)
        {
            ITerminalNode[] emptyList ={ };
            List<ITerminalNode> param = (ctx.idList() != null ? ctx.idList().Identifier() : emptyList).ToList();
            IParseTree block = ctx.block();
            String id = ctx.Identifier().GetText() + param.Count;
            // TODO: throw exception if function is already defined?
            function.Add(id, new Function(scope, param, block));
            return TLValue.VOID;
        }
    }
}
