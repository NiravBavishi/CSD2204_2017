public class PartTime: Employee {
    
    public var hourlyRate : Int
    public var numberHoursWorked : Int
    
    override init() {
        hourlyRate = 0
        numberHoursWorked = 0
        super.init();
    }
    
    init(ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int) {
        hourlyRate = pHourlyRate
        numberHoursWorked = pNumberHoursWorked
        super.init(ppName, ppAge)
    }
    
    init(ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int, ppV: Vehicle) {
        hourlyRate = pHourlyRate
        numberHoursWorked = pNumberHoursWorked
        super.init(ppName, ppAge, ppV)
    }
    
    
    override func calcEarnings() -> Double {
        return Double(numberHoursWorked * hourlyRate)
    }
    
    override func printMyData() -> String {
        //super.printMyData()
        
        if(self is CommissionBasedPartTime){
            
            return "Employee Is PartTime / Commissioned \nRate : \(hourlyRate)\nHours Worked: \(numberHoursWorked)"
        } else {
            
             return "Employee Is PartTime / Fixed Amount \nRate : \(hourlyRate)\nHours Worked: \(numberHoursWorked)"
        }
        
       /* print ("Rate: \(hourlyRate)")
        print ("Hours Worked: \(numberHoursWorked)")*/
    }
    
    
    
    
}

