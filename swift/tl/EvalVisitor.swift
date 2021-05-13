import Antlr4;

class EvalVisitor :TLBaseVisitor<TLValue> {
    private static  var returnValue:ReturnValue?;
    var scope:Scope?;
    var functions:Dictionary<String,Function>?;
    var buildInFunction:Dictionary<String,BuildInFunction>?;
    init(parent:Scope?,function:Dictionary<String,Function>?,buildingFunction:Dictionary<String,BuildInFunction>?){
        print("初始化")
        self.scope=parent;
        self.functions=function;
        self.buildInFunction=buildingFunction;
    }
    
    override func visitFunctionDecl(_ ctx:TLParser.FunctionDeclContext)->TLValue {
        let params = ctx.idList() != nil ? ctx.idList()!.Identifier() : [];
        let block = ctx.block();
        let id = ctx.Identifier()!.getText() + params.count;
        // 如果已经定义抛出异常
        functions![id] = Function(scope: scope,
                                  params: params,
                                  block: block);
        return VOID;
    }
    
    //访问列表
    override func  visitList(_ ctx:TLParser.ListContext) ->TLValue{
        var list:[TLValue?]=[];
        if (ctx.exprList() != nil) {
            for  ex in ctx.exprList()!.expression().enumerated() {
                let v=self.visit(ex.element);
                list.append(v);
            }
        }
        return TLValue(v: list);
    }
}
