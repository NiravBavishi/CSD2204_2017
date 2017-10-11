//
//  Car.swift
//  C0717705_F2017_MAD3004_FinalProject
//
//  Created by MacStudent on 2017-10-10.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation


public class Car : Vehicle {
    
    var carPlate : String
    var carType : String
    
    override init(){
        
        carPlate = ""
        carType = ""
        super.init()
        
    }
    
    init(cPlate : String, cType : String, refvehicle : Vehicle) {
        
        self.carPlate = cPlate
        self.carType = cType
        
        super.init(pMake: refvehicle.make, pModel: refvehicle.model)
        
    }
    
    init(cPlate : String, cType : String, make : String, model : String) {
        
        self.carPlate = cPlate
        self.carType = cType
        
        super.init(pMake: make, pModel: model)
        
    }
    
    
    override func printMyData() -> String{
        
        return " - Plate : \(carPlate) \n - Type : \(carType) \n - Make : \(make) \n - Model : \(model)"
        
    }
    
}


