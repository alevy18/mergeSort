import UIKit



class Stack {
    var stack: [Int] = []
    var min: Int?
    var max: Int?

    init(firstNum: Int) {
        min = firstNum
        max = firstNum
        stack.append(firstNum)
    }
    
    func push(num: Int){
        if num > max!{
            max = num
        }else if num < min! {
            min = num
        }
        stack.append(num)
    }
    
    func pop() -> Int{
        let last = stack[stack.count - 1]
        stack.removeLast()
        return last
    }
    
    func peek() -> Int{
        return stack[stack.count - 1]
    }
    
    func maxNum() -> Int {
        return max!
    }
    
    func minNum() -> Int {
        return min!
    }
}


var myStack = Stack.init(firstNum: 5)

myStack.push(num: 9)
myStack.push(num: 6)
myStack.push(num: 3)
myStack.push(num: 19)
myStack.push(num: -9)

print(myStack.stack)

print(myStack.maxNum())

print(myStack.minNum())

print(myStack.pop())

print(myStack.stack)

print(myStack.peek())
