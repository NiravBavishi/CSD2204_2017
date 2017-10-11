//
//  CommissionBasedPartTime.swift
//  C0717705_F2017_MAD3004_FinalProject
//
//  Created by MacStudent on 2017-10-10.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation


class CommissionBasedPartTime : PartTime {
    
    var CommissionPerc : Double
    
    override init() {
        
        CommissionPerc = 0.00
        super.init()
        
    }
    
    init(commission : Double, ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int) {
        
        self.CommissionPerc = commission
        
        super.init(ppName: ppName, ppAge: ppAge, pHourlyRate: pHourlyRate, pNumberHoursWorked: pNumberHoursWorked)
        
    }
    
    init(commission : Double,ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int, ppV: Vehicle) {
        
        self.CommissionPerc = commission
        
        super.init(ppName: ppName, ppAge: ppAge, pHourlyRate: pHourlyRate, pNumberHoursWorked: pNumberHoursWorked, ppV: ppV)
        
    }
    
    
    override func calcEarnings() -> Double {
        return (Double(numberHoursWorked * hourlyRate) + CommissionPerc)
    }
    
    override func printMyData() -> String{
        
        //super.printMyData()
        
        print("Commission : \(CommissionPerc),")
        
        return "Name : \(name) \nAge : \(age)"
        
    }
    /*
     func printMyData() -> String {
     
     return " Commission : \(CommissionPerc) "
     
     }*/
    
}




