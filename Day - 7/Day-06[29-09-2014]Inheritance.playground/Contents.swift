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
    
    init(emp:Employee) {
        
        self.eid = emp.eid
        self.ename = emp.ename
        self.salary = emp.salary
    }
    
    //Destructor
    deinit{
        print("Employee Object Destroyed")
    }
}






/*
 var e1 = Employee()
 var e2 = Employee(employeeId : 1, employeeName : "Nirav Patel", employeeSalary : 50000.0)
 */
/*
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
 */

class FullTimeEmployee : Employee
{
    
    var noOfPayedLeaves : Int?
    override init()
    {
        super.init()
        noOfPayedLeaves = 0
    }
    
    init(employeeId eid:Int, employeeName ename:String, employeeSalary salary:Double, noOfpayedLeaves : Int)
    {
        super.init(employeeId : eid, employeeName : ename, employeeSalary : salary)
        self.noOfPayedLeaves = noOfpayedLeaves
    }
    
   final func display(welcome:String) {
        
        print("No. Of Leaves ; \(self.noOfPayedLeaves!)")
    }
    
    override func display() {
        super.display()
        print("No. Of Leaves ; \(self.noOfPayedLeaves!)")
        
        
    }
    
}










var fte = FullTimeEmployee()

fte.display()


class partTime : Employee
{
    
    var startTime : Double?
    var endTime : Double?
    var noOfHours : Double?
    
    override init()
    {
        
        super.init()
        startTime = 0.00
        endTime = 0.00
        noOfHours = 0.00
        
    }
    
    init(employeeId eid:Int, employeeName ename:String, employeeSalary salary:Double, st:Double, et:Double, noh:Double)
    {
        super.init(employeeId : eid, employeeName : ename, employeeSalary : salary)
        self.startTime = st
        self.endTime = et
        self.noOfHours = noh
    }
    
    override func display() {
        super.display()
        print("Start Time >> \(startTime!)")
        print("End Time >> \(endTime!)")
        print("No Of Hours >> \(noOfHours!)")
    }
    
}










var p2 = partTime(employeeId:1, employeeName : "Nirav Bavishi", employeeSalary: 10000, st : 12.00, et : 6.30, noh: 6.30)
var p1 = partTime()

p1.display()
p2.display()

