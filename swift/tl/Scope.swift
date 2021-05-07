class Scope {
    let parent:Scope;
    var variables:Dictionary<String,TLValue>=[String: TLValue]();
    var isfunc:Bool=false;
    init(parent:Scope,isfunc:Bool) {
        self.parent=parent;
        self.isfunc=isfunc;
    }
}
