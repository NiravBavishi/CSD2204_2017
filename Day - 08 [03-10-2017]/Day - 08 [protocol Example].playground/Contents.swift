//: Playground - noun: a place where people can play

import UIKit

protocol ICalculation {
    
    static var MAX : Int{get}
    var a : Int {get set}
    var b : Int {get}
    func calculate() -> Int
    
}


class Addition : ICalculation {
    static var MAX: Int = 1000
    var a : Int
    var b : Int = 200
    
    init(){
        
        a = 1_000_00
        b = 1_00
        
    }
    
    func calculate() -> Int {
        
        return a + b
        
    }
    
}



class Substraction : ICalculation {
    
    static var MAX: Int = 1000
    var a : Int = 100
    var b : Int = 30
    
    
    init(){
        
        a = 1_000_00
        b = 1_00
        
    }
    
    init( _ a: Int, _ b: Int){
        
        self.a = a
        self.b = b
        
    }
    
    func calculate() -> Int {
        
        return a - b
        
    }
    
}


class Multiply : ICalculation {
    
    static var MAX: Int = 1000
    var a : Int = 100
    var b : Int = 30
    
    
    init(){
        
        a = 1_000_00
        b = 1_00
        
    }
    
    init( _ a: Int, _ b: Int){
        
        self.a = a
        self.b = b
        
    }
    
    func calculate() -> Int {
        
        return a * b
        
    }
    
}



class Devision : ICalculation {
    
    static var MAX: Int = 1000
    var a : Int = 100
    var b : Int = 30
    
    
    init(){
        
        a = 1_000_00
        b = 1_00
        
    }
    
    init( _ a: Int, _ b: Int){
        
        self.a = a
        self.b = b
        
    }
    
    func calculate() -> Int {
        
        return a / b
        
    }
    
}


var a1 = Addition()
print("SUM : \(a1.calculate())")

var s1 = Substraction(10,3)
print("Sum : \(s1.calculate())")

var m1 = Multiply(10,3)
print("Sum : \(m1.calculate())")

var d1 = Devision(10,3)
print("Sum : \(d1.calculate())")

