//
//  Motorcycle.swift
//  C0717705_F2017_MAD3004_FinalProject
//
//  Created by MacStudent on 2017-10-10.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation



class Motorcycle : Vehicle {
    
    var numberPlate : String
    var motorcycleType : String
    
    
    override init() {
        
        numberPlate = ""
        motorcycleType = ""
        super.init()
        
    }
    
    init(nPlate : String, mcType : String, refVehivle : Vehicle){
        
        self.numberPlate = nPlate
        self.motorcycleType = mcType
        
        super.init(pMake: refVehivle.make, pModel: refVehivle.model)
        
    }
    
    init(nPlate : String, mcType : String, make : String, model : String){
        
        self.numberPlate = nPlate
        self.motorcycleType = mcType
        
        super.init(pMake: make, pModel: model)
        
    }
    
    
    override func printMyData() -> String {
        
        return "Employee Has Motorcycle \n - Make : \(make) \n - Model : \(model) \n - Plate : \(numberPlate) \n - Type : \(motorcycleType)"
        
    }
    
}



