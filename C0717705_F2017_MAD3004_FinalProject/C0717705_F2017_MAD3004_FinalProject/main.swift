

var aEmp = [Employee]()


// create fulltime
var ft1 = FullTime() // default constructor
ft1.name = "Janet"
ft1.age = 20
ft1.salary = 50000
ft1.bonus = 2000

var vRef = Vehicle(pMake: "Ferrari",pModel: "458")
ft1.v = vRef

aEmp.append(ft1)

// create parttime
var pt1 : PartTime

vRef = Vehicle(pMake: "Porsche", pModel: "Carrera")



pt1 = PartTime(ppName: "Matthew", ppAge: 10, pHourlyRate: 100, pNumberHoursWorked: 2, ppV: vRef)

aEmp.append(pt1)

//create intern

vRef = Vehicle(pMake: "BMW", pModel: "X6")
var it1 = Intern(pName: "Loonie", pAge: 15, pSchool: "WoofCenter", ppV: vRef)

aEmp.append(it1)

//create intern


var it2 = Intern(pName: "Toonie", pAge: 15, pSchool: "JKWoofCenter")
aEmp.append(it2)






// calculate payroll

var totalPR : Double = 0.0
var e : Employee

for i in 0..<aEmp.count {
    
    e = aEmp[i]
    let earn = e.calcEarnings()
    
    //    print ("Name: \(e.name)")
    //    print ("Age: \(e.age)")
   print (e.printMyData())
    // display vehicle
    if (e.v == nil) {
        print ("** Employee has not registered any vehicle ***")
    } else {
        print ("*** Employe has a Vehicle")
        print ("Make: \(e.v!.make)")
        print ("Model: \(e.v!.model)")
        
    }
    print ("Birth Year: " + String(e.calcBirthYear()))
    print ("Earnings: \(earn)")
    print ("**********************")
    
    totalPR = totalPR + earn
}

print ("TOTAL PAYROLL: \(totalPR)")








// ------------------------------------------------ Main Class End ---------------------







print("---------------------------------------------------------------------------------------Main Class Over")

print("---------------------------------------------------------------------------------------Test")



// --------------------------------------------Edited From Here --------------------------------------


//---------------------------------------------------------------------------------

var c1 = Car(cPlate : "GJ 1 NB 3353", cType : "Sedan", refvehicle : vRef)

var m1 = Motorcycle(nPlate : "GJ 1 BN 4347", mcType : "Sport", refVehivle : vRef)

//print("------------------------------------------------------------------------------------")

//print(c1.printMyData())

//print("------------------------------------------------------------------------------------")
//print(m1.printMyData())

//print("------------------------------------------------------------------------------------")
//----------------------------------------------------------------------------------

var cbpt1 = CommissionBasedPartTime (commission : 10, ppName: "Nirav", ppAge: 22, pHourlyRate: 12, pNumberHoursWorked: 10)

print(cbpt1.printMyData())

// --------------------------------------------Edited End Here



var aEmp1 = [Employee]()



var vRef1 = Vehicle(pMake: "Ferrari",pModel: "458")




// create parttime
var pt4 : PartTime

vRef1 = Vehicle(pMake: "Porsche", pModel: "Carrera")



pt4 = PartTime(ppName: "Matthew", ppAge: 10, pHourlyRate: 100, pNumberHoursWorked: 2, ppV: c1)

aEmp1.append(pt4)

//create intern

vRef1 = Vehicle(pMake: "BMW", pModel: "X6")
var it4 = Intern(pName: "Loonie", pAge: 15, pSchool: "WoofCenter", ppV: m1)

aEmp.append(it4)

//create intern


var it3 = Intern(pName: "Toonie", pAge: 15, pSchool: "JKWoofCenter")
aEmp.append(it3)












// calculate payroll

var totalPR1 : Double = 0.0
var e1 : Employee

for i1 in 0..<aEmp1.count {
    
    e1 = aEmp1[i1]
    let earn1 = e1.calcEarnings()
    
    //    print ("Name: \(e.name)")
    //    print ("Age: \(e.age)")
   print (e1.printMyData())
    // display vehicle
    if (e1.v is Car) {
        
        print(e1.v!.printMyData())
        
    } else if(e1.v is Motorcycle)
    {
        
        print (e1.v!.printMyData())
        
    }
    else {
        
        print ("** Employee has not registered any vehicle ***")
    }
    print ("Birth Year: " + String(e1.calcBirthYear()))
    print ("Earnings: \(earn1)")
    print ("**********************")
    
    totalPR1 = totalPR1 + earn1
}

print ("TOTAL PAYROLL: \(totalPR1)")
