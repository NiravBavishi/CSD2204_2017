
public class Employee : IPrintable{
    public var name: String
    public var  age: Int
    public var v: Vehicle? // optional
    
    
    //    func setAge(pAge: Int) {
    //        if pAge >= 0 {
    //           age = pAge
    //        } else {
    //            age = 0
    //        }
    //    }
    //
    //    func getAge() -> Int {
    //        return self.age
    //    }
    
    init() {
        name = ""
        age = 0
        v = nil
    }
    
    init (_ pName: String,_ pAge: Int) {
        name = pName
        age = pAge
        v = nil
    }
    
    init (_ pName: String,_ pAge: Int, _ pV: Vehicle) {
        name = pName
        age = pAge
        v = pV
    }
    
    
    func calcBirthYear() -> Int {
        return (2017 - self.age)
    }
    
    func calcEarnings() -> Double {
        return 1000.00
    }
    
    func printMyData() -> String {
        
        return "Name: \(name) \nAge: \(age)"
        
        /*print ("Name: \(name)")
         print ("Age: \(age)")*/
        
    }
    
    
    
    /*func calcBirthYear() -> Int{
     
     let date = Date()
     let calendar = Calendar.current
     let year = calendar.component(.year, from: date)
     
     return (year - age)
     
     }*/
    
}



