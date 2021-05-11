class TLValue {
    public static let  NULL:TLValue=TLValue();
    public static let VOID:TLValue=TLValue();
    var val:AnyObject?;
    init() {
        val=nil;
    }
}
