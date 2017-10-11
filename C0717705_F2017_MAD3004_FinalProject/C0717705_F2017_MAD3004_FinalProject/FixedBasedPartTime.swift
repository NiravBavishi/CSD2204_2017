//
//  FixedBasedPartTime.swift
//  C0717705_F2017_MAD3004_FinalProject
//
//  Created by MacStudent on 2017-10-10.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation


class FixedBasedPartTime : PartTime {
    
    var FixedAmount : Double
    
    override init() {
        
        FixedAmount = 0.00
        super.init()
        
    }
    
    init(FixedAmount : Double, ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int) {
        
        self.FixedAmount = FixedAmount
        
        super.init(ppName: ppName, ppAge: ppAge, pHourlyRate: pHourlyRate, pNumberHoursWorked: pNumberHoursWorked)
        
    }
    
    init(FixedAmount : Double,ppName: String, ppAge: Int, pHourlyRate: Int, pNumberHoursWorked: Int, ppV: Vehicle) {
        
        self.FixedAmount = FixedAmount
        
        super.init(ppName: ppName, ppAge: ppAge, pHourlyRate: pHourlyRate, pNumberHoursWorked: pNumberHoursWorked, ppV: ppV)
        
    }
    
    
    override func calcEarnings() -> Double {
        return (Double(numberHoursWorked * hourlyRate) + FixedAmount)
    }
    
    override func printMyData() -> String {
        
        return "Amount Fixed : \(FixedAmount)"
        
    }
    
}


