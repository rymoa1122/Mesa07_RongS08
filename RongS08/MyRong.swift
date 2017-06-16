//
//  MyRong.swift
//  RongS08
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class Rong01 {
    var x = 10 //物件屬性
}
class Rong02 {
    static var x1 = 12 //static 只能同類別屬性static一起用
    static var x2:Int?
    static var x3:Int{
        return x1 * 100
    }
    var x4 = 123
    var x1 = 321
    init(){
        print(x4)
        //print(x1)不同類別 會被罵
        print(Rong02.x1)
        print(x1)//另外命名 可以存在
    }
}
class Rong03 {
    var x = 100
    static var y = 200
    func f1(){
        x += 1
        Rong03.f2()
    print("Rong03:f1()")
        
    }
    static func f1(){
    print("Rong03:static:f1()")
    }
//    class func f1() {
//    } 同類別屬性 但很少這樣用
    
    static func f2(){
        //x += 1 無法呼叫不同級別
        y += 1
        //f1() 無法呼叫
        f1() //加上同類別名稱
    }
}

class MyBike {
    static var counter = 0
    var counter = 0
    init(){
        MyBike.counter += 1
        counter += 1
        print("Create a new Bike!")
    }
}
//-------------
class Super1 {
    init() {print("Super:init()")}
}
class Sub11: Super1 { //sub繼承super 沒有定義任何init,呼叫Super1.init
    
}
class Sub12: Super1 {
    override init(){
       print("Sub12:init()")
    //複寫後 會reture後 還是會繼承父列別
    }
}
class Sub13: Super1 {
    init(_ :Int){}
}
//---------------------
class Super2{
    init() {print("Super2:init(Int)")}
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){print("Super2:init(Double)")}
}
class Sub21: Super2 {
}
class Sub22: Super2 {
    override init() {
        super.init(3) //先呼叫 都可
        print("Sub22:init()")
        //super.init() //後呼叫 都可
    }
    override init(_ : Int) {
        super.init()
    }
    init(_ : String) {
        super.init()
    }
}
//---------------------
class Super3 {
    init(){print("Super3:init()")}
}
class Sub31 : Super3 {
    override init() { //override 用爸爸
        print("doSomething")
    }
    convenience init(_ : Int) { //convenience 用自己
        print("Sub31:init(Int)")
        self.init()
    }
}

class TWID {
    var id:String?
    convenience init() {
        self.init(false)
    }
    convenience init(_ gender:Bool) {
        self.init(gender, 1)
    }
    convenience init(_ area:Int) {
        self.init(true, area)
    }
    init(_ gender:Bool, _ area : Int) {
        print("main logic")
        self.id = "A123456789"
    }
    init?(_ id:String) {
        let a = Int(arc4random_uniform(2))
        if a == 0 {
            return nil
        } else {
        self.id = id
        }
    }
}
//-----------------
class Super4 {
    init(){print("Super4:init()")}
    required init(x:Int){
    print("Super4:init(Int)")
    }
}
class Sub41 : Super4 {
    init(x : Double) {
        super.init()
    }
    required init(x:Int) {
        super.init()
    }
}
class Sub42 : Super4 {
    
}
class Sub421 : Sub41 {
    override init(x : Double) {
        super.init(x:1.0)
    }
    required init(x:Int) {
        super.init(x:1.0)
    }
}
