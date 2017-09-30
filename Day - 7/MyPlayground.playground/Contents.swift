//: Playground - noun: a place where people can play

import UIKit

class Employee
{
    
    let MIN_PAY = 11.60
    var a : String?
    
    static var noOfObjec = 0
    
    init(){
        Employee.noOfObjec += 1
    }
    
    static func getNoOfObject() -> Int
    {
       // a = "Test"/ /not allowed
        return noOfObjec
        
    }
    
    func greet(name : String)
    {
        
        print ("Employee :: Whio is Taylor Swift? \(name)")
        
    }
    
    deinit{
        print ("Employee Deinit")
    }
    
}


class PartTime : Employee
{
    override func greet(name: String) {
        print("Part Time :: Who Is Taylor Swift ?\(name)")
    }
    
    deinit{
        print ("Part Time Deinit")
    }
}

var e1 = Employee()
print(Employee.getNoOfObject())
e1.greet(name:"E1")
var e2 = Employee()
print(Employee.getNoOfObject())

var p1 = PartTime()
p1.greet(name: "p1")
p1.a = "Everithing Is Accessible like parent class"

e1 = p1
e1.greet(name: "NAME")

var r1 : Employee

r1 = Employee()
r1.greet(name: "Employee")

r1 = PartTime()
r1.greet(name: "Part Time")

p1 = e1 as! PartTime
p1.greet(name: "HELLOOOO")




