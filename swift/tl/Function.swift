import Antlr4;

class Function {
    var  parentScope:Scope?;
    var  params:[TerminalNode];
    var  block:ParseTree?;
    init(scope:Scope?,params:[TerminalNode],block:ParseTree?) {
        self.parentScope=scope;
        self.params=params;
        self.block=block;		
    }
    
    func invoke(args:[TLValue],  functions:Dictionary<String,Function>,  buildFunction:Dictionary<String,BuildInFunction>) throws ->TLValue?{
        if (args.count != params.count) {
            throw TLError.negative;
        }
        let scopeNext = Scope(parent: parentScope, isfunc: true);
        // 创建函数作用域
        for (i,p) in params.enumerated() {
            //获取每个函数的参数值
            scopeNext.assignParam(name:p.getText(),val: args[i]);
        }
        let evalVistorNext = EvalVisitor(parent: scopeNext, function: functions, buildingFunction: buildFunction)

        let ret = VOID;
        
        _ = evalVistorNext.visit(block!);
        
        return ret;
    }
}
