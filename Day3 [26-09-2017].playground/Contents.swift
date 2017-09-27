//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// <[(declaring tuples)]>//

// for a++
//var a = 5,b=2
//a+=1
//var c = 5 + b / a-=1 + (a+=1)

//print("\(a) \(b) \(c)")

////var x = (10,20,"Patel")
////print(x.0)
////print(x.1)
////print(x.2)

////var y = (x.0,x.1)
////var (a1,a2) = y

////print(a1)
////print(a2)

////var(b1,_,b2) = x

//print(b1)
//print(b2)

// Array Declaration//
var a = [10, 20, 30, 40, 50]
print(a[0])

//use methods to add values//

var b = [Int]();
b.append(100)
print(b[0])
b[0] = 1000
print(b[0])
print("size : \(b.count)")

//

// Declaration to store any data types values //

var c = [Any]();
c.append(100)
c.append("Patel")
print(c[0])
print(c[1])
c[0] = 1000
print(c[0])
print("size : \(c.count)")




var x = a[1...3]
print(x[3])
for t in x{
    print(t)
    
}


// Creating array with default values //

var ar = Array(repeating:28, count:3)

// string array and for-each with (KEY, VALUE) //

var shoppingList: [String] = ["Eggs", "Milk"]
for(index, value) in shoppingList.enumerated()
{
    
    print("Item\(index) : \(value)")
    
}

// Combine two arrays //
var xx = a + b

// Sorting of array //
a.sort()
a.sort(by: >)




// declaring set  //

var favouriteGerners: Set<String> = ["Rock", "Classical", "Hip Hop", "Rock"]

print(favouriteGerners)


for gerner in favouriteGerners{
    
    print("\(gerner)")
    
}


// Dictionaries //

// < key, value > pairs

var d1 : Dictionary <String, String> = ["India" : "Hindi", "Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)


d1["China"] = "Mandarin"

// Same like array but only Key calues may be a string or anything like int //

d1["China"] = "French"

for(k,v) in d1{
    
    print("\(k) -> \(v)")
    
}


//  To Store Any kind of values and objects also  //

var d3 = [String: AnyObject]()
d3["firstName"] = "Nirav" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["Age"] = Int(28) as AnyObject
d3["salary"] = nil
d3["birthDate"] = NSDate() as AnyObject

print(d3)

for(kk,vv) in d3{
    
    print("\(kk) -> \(vv)")
    
}

// Another way //

for obj in d3{
    
    print("\(obj.key) -> \(obj.value)")
    
}


// Getting Only keys from dictionary //
var keyList = Array(d3.keys)
print(keyList)

// Getting Only Only values from dictionary //
var valueList = Array(d3.values)


for va in valueList{
    
    print("Value -> \(va)")
    
}




// Example: St id, stu name(1st ,last) name, address()

var Student = [String : AnyObject]()

var d15 : Dictionary <String, String> = ["India" : "Hindi", "Canada":"English"]

var Name : Dictionary<String,String>[]

 Name : Dictionary <String, String> = ["FirstName" : "Nirav", "LastName" : "Patel"]




//d3["Name"] = Array("FirstName" , "Nirav")



//var StudentDetail : Dictionary <String, Dictionary> =
//[

   // "s1":[]

//]





















