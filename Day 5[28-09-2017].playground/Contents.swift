//: Playground - noun: a place where people can play

import UIKit



struct s{
    var x = 100;
}

var s1 = s()
print("S1 (x) \(s1.x)")
var s2 = s1
print("s2 (x) \(s2.x)")
s1.x = 200;
print("S1 (x) \(s1.x)")
print("S2 (x) \(s2.x)")

//class is reference type

class c{
    
    var x = 100;
    
}

var c1 = c()

print("c (x) \(c1.x)")
var c2 = c1
print("c2 (x) \(c2.x)")

c1.x = 200;

print("c1(x) \(c1.x)")
print("C2 (x) \(c2.x)")



class f{
    
    var c0 = c()
    var y = 1000
    
}


var f1 = f()


print("f1 (y) \(f1.y)")
print("f1 (c0) \(f1.c0)")
//var f2 = f1
//print("c2 (x) \(c2.x)")
var f2 = f1
//c1.x = 200;

print("f2 (y) \(f2.y)")
print("f2 (x) \(f2.c0.x)")
print("---------------------------------------")
f1.c0.x = 3ƒ00
print("f1 (x) \(f1.c0.x)")
print("f2 (x) \(f2.c0.x)")




