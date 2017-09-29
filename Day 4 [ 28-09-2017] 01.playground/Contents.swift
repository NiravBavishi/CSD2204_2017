//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
class Student{
    
    //let x = 100
    var sid:Int = 0
    var snm:String?
    var total:Double = 0.0
    var per:Double = 0.0
    var result:String?
    var getResult:String?{
        set{
            if per >= 80.0 {
                result = "First"
            } else if per >= 70.0 {
                result = "Second"
            } else if per >= 60.0 {
                result = "Third"
            } else if per >= 50.0 {
                result = "Pass"
            } else {
                result = "Fail"
            }
        }
        
        get{
            if let X = result{
            return X
            }
            return "Unknown"
        }
    }
    
    
    func setData(sid:Int, snm:String, marks:Double, per:Double){
        
        self.sid = sid
        self.snm = snm
        total = marks
        self.per = per
        
    
        
    }
    
    func displayData(){
        
        print("Student ID : \(sid)")
        print("Student Name : \(snm!)")
        print("Student Total Marks : \(total)")
        print("Student Percentage : \(per)")
        print("Student Result : \(getResult!)")
        
    }
    
    
}



var s1 = Student()
s1.sid
//s1.x

s1.setData(sid: 1, snm: "Nirav", marks: 100, per:50.0)
s1.getResult = "Test"
s1.displayData()
*/


//------------- Another Way --------------------------	//

import UIKit
class Student{
    //let x = 100
    var sid:Int = 0
    var snm:String?
    var result:String? = "Unknown"
    
    //Properties
    var total:Double = 0.0
    {
        willSet(newTotal) {
            
        }
        didSet {
            self.per = self.total / 5.0
        }
        
    }
    var per:Double = 0.0
    {
        willSet(newPercentage) {
            print("<< << << Result About to set based on new \(newPercentage)% calculation >> >> >> ")
        }
        didSet {
            if self.per >= 80.0{
                self.result = "First"
            } else if self.per >= 70.0{
                self.result = "Second"
            } else if self.per >= 60.0{
                self.result = "Third"
            } else if self.per >= 50.0{
                self.result = "Pass"
            } else {
                self.result = "Fail"
            }
        }
    }
    
    func setData(studentId sid:Int, snm:String, marks:Double){
        self.sid = sid
        self.snm = snm
        self.total = marks
    }
    
    func displayData(){
        print("------------------------------------------------------------------------")
        print("Student ID : \(sid)")
        print("Student Name : \(snm!)")
        print("Student Total Marks : \(total)")
        print("Student Percentage : \(per)")
        print("Student Final Result : \(self.result!)")
        print("------------------------------------------------------------------------")
    }
}

var s1 = Student()
s1.setData(studentId: 1, snm: "Pritesh", marks: 200)
s1.displayData()
s1.total = 500
s1.displayData()


s1.total = 350
s1.displayData()









