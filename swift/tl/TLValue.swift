
let NULL=TLValue();
let VOID=TLValue();

class TLValue :Equatable{

    var val:Any?;

    init() {
        val=nil;
    }
    init(v:Any?) {
        self.val=v;
    }
    
    func asBoolean() ->Bool?{
        return self.val as? Bool;
    }

    func asDouble() ->Double? {
        return self.val as? Double;
    }

    func asLong() ->Int64? {
        return self.val as? Int64;
    }

    func asInt()->Int? {
        return self.val as? Int;
    }

    func asByte()->UInt8? {
        return self.val as? UInt8;
    }

    func  asList() ->[TLValue]? {
        return self.val as? [TLValue]
    }

    func asString()->String? {
        return self.val as? String
    }

  
    public static func ==(this:TLValue, that:TLValue) -> Bool {
        if(this.isNumber() && that.isNumber()) {
            if(this==that) {
                return true;
            }
            else {
                return this.asDouble()==that.asDouble();
            }
        }
        else if(this.isString() && that.isString()) {
            return this.asString()==that.asString();
        }
        else {
            return false;
        }
    }

    func isBoolean()->Bool {
        return self.val is Bool;
    }

    func isNumber()->Bool {
        return self.val is Int || self.val is Int64 || self.val is UInt
    }

    func isList()->Bool {
        let typeString = String(describing: type(of: self.val))
        return typeString=="Array"
    }
    
    //检查是不是集合类型
    func isCollection<T>(_ object: T) -> Bool {
        let collectionsTypes = ["Set", "Array", "Dictionary"]
        let typeString = String(describing: type(of: object))

        for type in collectionsTypes {
            if typeString.contains(type) { return true }
        }
        return false
    }

    func isNil()->Bool {
        return  self==NULL;
    }

    func isVoid()->Bool {
        return self==VOID;
    }

    func isString()->Bool {
        return self.val is String;
    }


    func toString()->String? {
        return isNil() ? "NULL" : isVoid() ? "VOID" : self.val as? String;
    }
}
