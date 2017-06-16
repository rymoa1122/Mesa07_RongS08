//
//  MyClasses.swift
//  RongS08
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class MyClass01{}
class MyClass02 {
    var x:Int
    init(x:Int){self.x = x}
}
class MyClass03 {
    var x = 123
    init(){}
}
class MyClass04 {
    var x:Int?
}
//----------------
class MyClass05 {
    var x :Int{
        // 一定要有 getter
        get{
            return 1
        }
        //可以不要 setter
        set{
            //newValue
        }
    }
}
//計算性屬性
class MyClass06 {
    var y = 123
    var x:Int{
        return y * y
    }
}
//----------------
class MyClass07 {
    var x = 0 {
        willSet {
            //newValue 先抓預設值
        }
        didSet {
            
        }
    }
}
