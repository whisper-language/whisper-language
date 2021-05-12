using Antlr4.Runtime;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http.Headers;
using whisper_language.gen;

namespace whisper_language
{

    class sum : BuildInFunction
    {
        public TLValue invoke(List<TLValue> argv)
        {
            int s = 0;
            argv.ForEach(e =>
            {
                s += e.asInt();
            });
            return new TLValue(s);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                var a = CharStreams.fromPath("../test.pg");
                var lexer = new TLLexer(a);
                TLParser parser = new TLParser(new CommonTokenStream(lexer));
                parser.BuildParseTree = true;
                var tree = parser.parse();
                Scope scope = new Scope(null, false);

                var funcs = new Dictionary<string, BuildInFunction>();
                funcs.Add("@sum", new sum());
                var visitor = new EvalVisitor(scope, new Dictionary<string, Function>(), funcs);
                visitor.Visit(tree);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace.ToString());
            }
        }
    }
}
