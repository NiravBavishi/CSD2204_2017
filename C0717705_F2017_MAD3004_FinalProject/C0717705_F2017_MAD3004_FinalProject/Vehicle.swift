public class Vehicle : IPrintable {
    public var make: String
    public var model: String
    
    init() {
        make = ""
        model = ""
    }
    
    init(pMake: String, pModel: String) {
        make = pMake
        model = pModel
    }
    
    func printMyData() -> String {
        
        return " - Make : \(make) \n - Model : \(model)"
        
    }
}

