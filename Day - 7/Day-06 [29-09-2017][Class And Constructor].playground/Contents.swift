//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Employee {
    
    var eid : Int?
    var ename : String?
    var salary : Double?
    
    func display()
    {
        print(self.eid!, self.ename!, self.salary!)

    }
    // default Constructor
    init()
    {
        eid = 0
        ename = String()
        salary = 0.0
    }
    // Parametrize Constructor
    init(employeeId eid:Int, employeeName ename:String, employeeSalary salary:Double)
    {
        self.eid = eid
        self.ename = ename
        self.salary = salary
    }
    
    // Copy Constructor
    
 /*   init(emp:Employee) {
        
        self.eid = emp.eid
        self.ename = emp.ename
        self.salary = emp.salary
    }*/

//------------------------------- copy constructor another way ----------------------------//
    convenience init(emp:Employee){
        self.init(employeeId : emp.eid!, employeeName : emp.ename!, employeeSalary : emp.salary!)
    }
    
    
    
    
    //Destructor
    deinit{
        print("Employee Object Destroyed")
    }
}




var e1 = Employee()

//Employee.display(e1)
//print(e1.eid!, e1.ename!, e1.salary!)
e1.display()

var e2 = Employee(employeeId : 1, employeeName : "Nirav Patel", employeeSalary : 50000.0)

e2.display()
e1 = e2

var e3 = e2




e3.display()




var e4 = Employee(emp : e1)
e4.ename = "Nirav"
e4.display()

var e5 = e3
e5.ename = "Payal"
e5.display()
e3.display()

/*
var eid = Int()
var gender = Bool()
var enm = String()
var salary = Double()

print(eid, enm, gender, salary)
*/

