//: Playground - noun: a place where people can play

import UIKit

extension String {
    
    var f1 : String { return "Welcome \(self)" }
 
    var f3 : String { return "$ \(self)" }
    
    
    var vowels : [String] {
        
        get{
            var result = [String]()
            
        
            
            let check = "aeiou"
            
            for i in self {
                for j in check {
                    
                    if  i == j {
                        
                        print(i)
                        result.append(i)
                    
                    }
                   
                }
                
            }
            
           return result
            
        }
        
    }
    
    var consonents : [String]{
        
        get{
            
            return ["b", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
            
        }
        
    }
    
}

var str1 = "Welcome"



print("Vovels : \(str1.vowels)")
print("Conso : \(str1.consonents)")

