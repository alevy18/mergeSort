import UIKit

//var str = "Hello, playground"
//
////swift have featur null safety. Objc already, Dart
//
//class Person {
//
//
//    var name: String?
//
//}
//
//var p: Person? = nil
//p = Person.init()
//p?.name = "alok"
//
//p = nil
//
//
//
//class Student {
//
//    var name : String?
//    var email: String?
//
//}
//
////type inferance
//
//class Animal {
//    var species: String = ""
//}
//
//var name: String?
////GM alok
//var res = ""
//if let unwrapped = name {
//    res = "GM " + unwrapped
//} else {
//    res = "GM " + "john"
//    //merge
//}
//
//////
/////
//
////?? - nil coelscing oper
//var unwrappedNil = "GM " + ( name ?? "john")
//
////guard let
//func encryptString(stringToEncrypt: String?) -> String {
//
//
//    guard let unwrapped_stringToEncrypt = stringToEncrypt else {
//
//
//
//        return ""
//
//
//    }
//
//    //RSA
//    return "sfjkhaifndfbndfhbv" + unwrapped_stringToEncrypt + "+++++"
//
//}
//
//let res1 = encryptString(stringToEncrypt: "eheheeheh")
//res1
//
//
////! foce unwrap - exclamation mark
//
//if name != nil {
//    print("GM " + name!)
//
//} else {
//
//}
//
////
//switch name {
//case .none:
//    print("nil case handle")
//case .some(let x):
//    print("GM " + x)
//
//}
//
////optionl chaining
//
//class A {
//    var b: B?
//}
//
//class B {
//
//    var c: C?
//
//}
//
//class C {
//    var name: String?
//}
//
//
//let a = A.init()
//
//let b = a.b
//
//if let unwrappb = b {
//
//    let c = unwrappb.c
//
//    if let unwrappedc = c {
//        let name = unwrappedc.name
//
//        if let unwrappedName = name {
//
//        } else {
//
//        }
//    } else {
//
//    }
//} else {
//
//}
//

//let nameRes = a.b?.c?.name

//What is optional -  An optioanl is an enum with two cases none & some
//optional binding = if let | guard let
//optional chaining b?.c?.name
//nilcoelescing operator ??
//force unwrap !
//using switch cases
//
//func checkGuardElse() {
//
//    guard 1 == 2 else {
//        print("not equal")
//        return
//    }
//
//    //do some other stuff
//
//}
//
//class Department {
//
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let dep = Department(name: "iOS")
//
//let dep1  = dep //assign ref of Department to dep1 also
//dep1.name = "Android"
//
//print(dep.name)
//print(dep1.name)
//
//
//struct DepartmentStruct {
//
//    var name: String
////VERY IMP DIFF DEFAULT INIT
//}
//
//var d = DepartmentStruct.init(name: "iOS")
//var d1 = d //no addres assignment value
//d1.name = "Android"
//print(d1.name)
//print(d.name)
//
//
//
//


//
//
//class ABC {
//     var v: Int=0
//    func setV(v: Int = 9) {
//        self.v = v
//    }
//
//
//    deinit {
//        print("'ABOUT' to deinitialize")
//    }
//
//}
//
//
//var abc1 : ABC? = ABC()
//abc1 = nil//will invoke deinit automatically



//
//
//
//
//
//
//let abc = ABC.init()
//abc.v = 10
//abc.setV(v: 10)
//
//struct DEF {
//    var v: Int
//
//    mutating func setV(v:Int) -> Void {
//        self.v = v
//    }
//
////    deinit {
//
//    }
//}
//
//var def = DEF(v: 0)
//def.v = 20
//def.setV(v: 20)
//

//traditional enums
enum HeightErrors: Error{
    case HeightIsLess
    case HeightIsMore
}

enum HeightErrorDescription: String, Error {
    case HeightIsLess = "The height you provide is less than expected"
    case HeightIsMore = "The height you provide is greater than expected"
}

//exception & handling

class HeightCheckingSyste {
    
    func checkHeight(inputHeight: Float) -> Bool {
        
        
        if inputHeight > 220 { return false }
        if inputHeight < 150 { return false }
        
        return true
    }
    
    func checkHeightWithFeedback(inputHeight: Float) throws -> Bool {
        
        
        if inputHeight > 220 { throw HeightErrors.HeightIsMore }
        if inputHeight < 150 { throw HeightErrors.HeightIsLess }
        
        return true
    }
    
    func checkHeightWithFeedbackDescription(inputHeight: Float) throws -> Bool {
        
        
        if inputHeight > 220 { throw HeightErrorDescription.HeightIsMore }
        if inputHeight < 150 { throw HeightErrorDescription.HeightIsLess }
        
        return true
    }
}

let heightCheckingSyste = HeightCheckingSyste()
//let resH = heightCheckingSyste.checkHeight(inputHeight: 165)

do {
    let resH1 = try heightCheckingSyste.checkHeightWithFeedbackDescription(inputHeight: 165)

    print(resH1)

} catch (let err)  {
    let e = err as! HeightErrorDescription
    print(e.rawValue)
}


//let resH2 = try? heightCheckingSyste.checkHeightWithFeedbackDescription(inputHeight: 1000)
//if let res = resH2 {
//    print(res)
//} else {
//    print("some exception do not know what because in this case we do not havev error object access")
//}
//
//let resH3 = try! heightCheckingSyste.checkHeightWithFeedbackDescription(inputHeight: 1000)
//if let res = resH2 {
//    print(res)
//} else {
//    print("some exception do not know what because in this case we do not havev error object access")
//}



//Banking system (class) withdrawAmount (a func)

enum bankSystemError: String, Error {
    case insufficientBalance = "Your account has insufficient funds"
}



class BankingSystem {
    
    let existingAmouunt: Float = 100.00
    
    //Bool
    func withdrawAmount(amountToBeWithdrawn: Float) -> Bool{
        
        if amountToBeWithdrawn > existingAmouunt {false}
        
        return true
        
    }
    
    //throw
    func withdrawAmountThrow(amountToBeWithdrawn: Float) throws -> Bool{
        
        if amountToBeWithdrawn > existingAmouunt {throw bankSystemError.insufficientBalance}
        
        return true
        
    }
}

let myBank = BankingSystem()

myBank.withdrawAmount(amountToBeWithdrawn: 102)

do {
    let isValid = try myBank.withdrawAmountThrow(amountToBeWithdrawn: 102)
    
    print(isValid)
    
} catch(let receivedError){
    
    //necessary to convert type from error to bankSystemError
    let err = receivedError as? bankSystemError
    
    if let errUnwrapped = err{
        print(errUnwrapped.rawValue)
    }
   
}

let k = 10


enum pizzaSaleError: String, Error {
    case ranOut = "There is not enough pizza for your request"
}

class pizzaSlices{
    
    var slices: Int
    
    init(slices: Int){
        self.slices = slices
    }
    
    func sellSlices(numSlices: Int) throws -> Bool{
        
        if numSlices > slices {throw pizzaSaleError.ranOut}
        
        return true
    }
}

var pizza = pizzaSlices(slices: 10)

do {
    let enoughPizza = try pizza.sellSlices(numSlices: 12)
    
    print(enoughPizza)
    
}catch{
    
    let err = error as! pizzaSaleError
    
    print(err.rawValue)
}



enum checkOutBooksError: String, Error{
    case noMoreInventory = "All books have been checked out of the library. Please check back later"
    case overLimit = "I'm sorry, customers are only allowed to check out 10 books at a time."
}



class LibraryInventory {
    
    var numBooksInLib: Int
    
    let checkOutLimit: Int = 10
    
    init(numBooks: Int){
        self.numBooksInLib = numBooks
    }
    
    class func whatDoYouHave() -> String {
        return "A lot of books"
    }
    
    
    func checkOutBooks(howMany: Int) throws -> Bool {
        
        if howMany > numBooksInLib {throw checkOutBooksError.noMoreInventory}
        if howMany > checkOutLimit {throw checkOutBooksError.overLimit}
        
        return true
    }
}

var sanDiegoLib = LibraryInventory(numBooks: 100)

do{
    let canIBringHome = try sanDiegoLib.checkOutBooks(howMany: 9)
    
    print(canIBringHome)
}catch {
    let err = error as! checkOutBooksError
    
    print(err.rawValue)
}



LibraryInventory.whatDoYouHave()



class Bank {
    var balance: Double?
    
    init(balance: Double?){
        self.balance = balance
    }
    
}

var myBank = Bank(balance: 50)

print(myBank.balance)
