//
//  car.swift
//  calapp
//
//  Created by Yasuyuki Takeshita on 2019/11/01.
//  Copyright © 2019 Yasuyuki Takeshita. All rights reserved.
//

import Foundation

class Car {
    var frontwheel = 0
    var rearwheel = 0
    
    // initとはinitialize（初期化）
    init(){
        frontwheel = 0
        rearwheel = 0
    }
    
    // MVCモデル
    // Model View conroller
    
    func drive(){
        print("運転開始！")
        print("前輪\(frontwheel)")
        print("後輪\(frontwheel)")
    }
    
    func move(toBack:String){
        print(toBack)
    }
    
    func plusAndMinus(num1:Int,num2:Int)->Int{
        return num1 + num2
    }
}
