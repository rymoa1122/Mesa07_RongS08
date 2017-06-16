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
