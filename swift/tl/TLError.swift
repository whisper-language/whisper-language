//
//  TLError.swift
//  tl
//
//  Created by jzx on 2021/5/7.
//

class TLError :Error {
    var value:TLValue;
    
    init(val:TLValue){
        value=val;
    }
}
