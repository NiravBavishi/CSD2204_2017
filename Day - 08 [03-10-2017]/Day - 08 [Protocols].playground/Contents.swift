//: Playground - noun: a place where people can play

import UIKit

protocol IDisplay{
    
    init()
    func display()
    
}


protocol IGreetings{
    
    func greet() -> String
    
}



class Fruits : IDisplay, IGreetings{
    
    var name : String!
    
    required init(){}
    
    init(name :String) {
        self.name = name
    }
    
    
    ///IDIsplay Protocol
    func display() {
        print("Protocol Display()")
    }
    // IGreeting protocol
    func greet() -> String {
        return "Welcome To protocol programming"
    }
    //     Method Of Fruits Class     //
    func greet(name : String){
        
        print("I will fire tje error ", name)
        
    }
    
}


var f1 = Fruits()

f1.display()
print(f1.greet())
f1.greet(name: "Prit")


var f2: IDisplay

f2 = f1

f2.display()


class Apple : Fruits {
    
    required init(){
        
        super.init(name : "Golden Apple")
        
    }
    
    override init(name : String){
        
        super.init()
        self.name = name
        
    }
    
}

var apple1 = Apple()
print("---------------------- Apple Starts From Here ----------------------")
apple1.display()
