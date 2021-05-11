class Scope {
    let parent:Scope?;
    var variables:Dictionary<String,TLValue>=[String: TLValue]();
    var isfunc:Bool=false;
    
    init(parent:Scope?,isfunc:Bool) {
        self.parent=parent;
        self.isfunc=isfunc;
    }
    
    func assignParam(name:String,val:TLValue){
        variables[name]=val;
    }
    
    func assign(name:String,val:TLValue){
        if(resolve(name:name, checkParent: !isfunc) != nil) {
                reAssign(name:name, val: val);
            }else {
                variables[name]=val;
        }
    }
    
    func reAssign(name:String, val:TLValue ) {
        if(variables[name] != nil) {
            // The variable is declared in this scope
            variables[name]=val;
        }
        else if(parent != nil) {
            // The variable was not declared in this scope, so let
            // the parent scope re-assign it
            parent!.reAssign(name: name, val: val);
        }
    }

    
    func resolve(name:String) ->TLValue?{
        return resolve(name:name,checkParent: true);
    }
    
    func resolve(name:String, checkParent:Bool)->TLValue? {
        let value = variables[name];
        if(value != nil) {
            // The variable resides in this scope
            return value;
        }
        else if(checkParent && parent != nil) {
            // Let the parent scope look for the variable
            return parent!.resolve(name:name,checkParent: !parent!.isfunc);
        }
        else {
            // Unknown variable
            return nil;
        }
    }
    
}
