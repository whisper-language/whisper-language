using Antlr4.Runtime;
using System;
using System.Collections.Generic;
using System.Text;

namespace whisper_language
{
    class EvalException :Exception
    {
        String msg;
        
       public EvalException(ParserRuleContext ctx) : base("发生异常"){
           
        }


       public EvalException(String msg,ParserRuleContext ctx): base(msg){
            
        }
    }
}
