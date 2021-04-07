import UIKit
//
//Instructions:
//1. You are not allowed to access the Internet at all. You may, however, use Apple documentation within Xcode.
//2. If asked to create an app, create a separate project for that particular question with project-name having Question number. Same in case of Swift Playground. (For Ex: Q11_ButtonAnimation.)
//3. Finally zip all your Projects/Playground/Doc and name it as: “B27_YourName_10thDayTest”.
//4. Pick highest marks questions first.
//5. Manage your time well & attempt all questions
//Total Marks: 150
//[Max Time Allotted: 3.5 hours]


//::::: [Algorithm / Data Structure] ::::: 2 Questions ::::: 20 marks
//:::::
//Q1. Given a string, write a function to count the number of occurrences of each character and print its count. [10]

func numChars(word: String) -> [(String, Int)]{
    let wordArr = Array(word)
    var charArr = [String]()
    var charCountArr = [Int]()
    var resArr = Array(repeating: 0, count: wordArr)
    
    
    for char in wordArr{
        if charArr.contains(String(char)){
            let countIdx = charArr.firstIndex(of: String(char))!
            charCountArr[countIdx] += 1
        }else{
            charArr.append(String(char))
            charCountArr.append(1)
        }
    }
    
    for idx in charArr{
        resArr[resArr.count] = count((charArr[idx], charCountArr[idx]))
    }
    return resArr
    
    
//    var dict: [[String : Int]]
//
//    let wordArr = Array(word)
//
//    for char in wordArr{
//        if dict[[char : ]] {
//            dict.append([char : 1])
//        }else{
//            dict[char] += 1
//        }
//    }
//    return dict
}


//Q2. Write a Swift function to sort an array of integers. [10] ::::: [iOS Basics] ::::: 4 Questions ::::: 20 marks :::::

func sortIntArr(arr: inout [Int]){

    var idx: Int = 0
    var switched: Bool = false
    
    while idx < arr.count - 1{
        if arr[idx] > arr[idx + 1]{
            swap(idx1: idx, idx2: idx + 1, arr: &arr)
            switched = true
        }
        idx += 1
        if switched == true{
            switched = false
            idx = 0
        }
    }
}

func swap(idx1: Int, idx2: Int, arr: inout [Int]){
    let temp: Int  = arr[idx1]
    arr[idx1] = arr[idx2]
    arr[idx2] = temp
}


var testArr = [3,5,6,4,6,4,3,4,5,78,9,-1]

sortIntArr(arr: &testArr)

print(testArr)





//Q3. List five features of Swift language. [5]

//optionals
//do try catch for exceptions error handling
//switch statements
//enums, structs, and classes
//arrays


//Q4. Q5. Q6.
//In a single view application programmatically create UIButton, UILabel. On the click of button show counter in label. [5]

//apolisTest7


//Write code to create optional, and show 3 ways to unwrap them.[5]

var greeting: String? = "hello"

if let unwrapped = greeting {
    print(unwrapped)
}


let unwrap = greeting!

let unwr = greeting ?? "bye"


//Write logic to create UIButton and UILabel prorammatically. [5] ::::://[Swift Basics] ::::: 4 Questions ::::: 25 marks :::::
//

//UILabel.init




//Q7. In a playground file, create an array of tuple having elements of type Int and String. Write a function that will convert the values of these two types into two separate array and return from the function. [5]






//Q8. What is the value of score1.score after this piece of code executes? Explain why? [5]

//struct Goals {
//    var score: Int
//}
//
//var score1 = Goals(score: 5)
//var score2 = score1
//score2.score += 1

//    5, because structs are pass by value









//Q9. Consider the following definition of the structure Person:

//struct Person {
//var address: String?
//let name: String
//init (name: String){
//    self.name = name
//    self.address = nil
//}
//
//mutating func changeAddress(addr: String) { self.address = addr }
//
//}
//Select the correct statements for above struct: [5]
//1. The struct Person can be inherited from to create child structs.
//false, classes inherit, not structs

//2. The initializer init is required to set the initial values of all properties.
//False. structs have member-wise initialization

//3. The property “name” cannot be changed after initialization.
//true

//4. The “mutating” keyword of function “changeAddress” is required to modify
//the instance variable “address”.
// true functions in structs require mutating if they are going to change the internal variables


//5. The function “changeAddress” can set the property address to nil.
//true, address, is an optional











//Q10. Explain the below Operators with their names (if any) and use-case: [10]
//A. ?
//
//optional, allows a variable/ object to take the data type of the variable or nil

var name: String?
//
//B. ??
// optional coalessing operator

let bob = name ?? "Bob"

//
//C. !
// force unwrap, it will force an optional to reveal its non- nil value

let joe: String? = "Joe"

let unwrapped = joe! // would equal "Joe"
//
//D. ..<
for _ in 0 ..< 3 {
    print("hi")
}
// gives a range not including ending number
//
//E. ...

for _ in 0 ... 3 {
    print("hello")
}

// gives range including ending number

//::::: [iOS - User Interface] ::::: 3 Questions ::::: 30 marks :::::


//Q11. Create an application that has one screen and has a text field. While entering/typing in a text field user should not be able to enter more than 10 characters.[10]

    //apolisTest6 done


//Q12. Create an application with three screens. On the first screen you will have two buttons named “Present” and “Push”. When you click "Present" it should present a new VC and when you click "Push", it should navigate to a new screen. Make sure you should be able to come to first screen from Pushed or Presented view controllers. [10]


//apolisTest1 done

//Q13. Create an app that has one screen with background color Green and has a button at the center of the screen (ensure in Portrait and Landscape mode, both) having title as “Click here to change background color to Red”, when user clicks on it, the screen color should change to Red and button title to “Click here to change background color to Green”. [10]
//::::: [iOS - Core/Coding] ::::: 3 Questions ::::: 55 marks :::::

//apolisTest3 done


//Q14. Analyse this code and provide a better solution. [5]
//
//var defaults = UserDefaults.standard
//var name = defaults.string(forKey: "name")! printString(string: name)
//func printString(string: String) { print(string)
//}




//Q15. Create a simple iPhone app that enables user to select an image from Camera when on a device and from Album/Photo-Gallery when on a simulator. Display the selected image in an image-view that should be constrained to make it fit the entire screen and should have its display mode set to aspect-fit. [20]

//apolisTest4 done except for figuring out how to choose simulator/ device


//Q16. a) Create an app that will show one tab ‘Academic’. Academic tab have two buttons with ‘English’ and ‘Math’ [10]
//b)If I click on English/Math show details of them pushed on navigation controller..
//[20]

//apolisTest2 done
