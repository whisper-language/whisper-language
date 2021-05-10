using System;
using System.Collections.Generic;
using System.IO;
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
    }
}
