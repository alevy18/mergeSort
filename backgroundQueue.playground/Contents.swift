import UIKit

var str = "Hello, playground"


func simpleQueue(){
    let queue = DispatchQueue(label: "hi")
    
    queue.async {
        for idx in 0..<10{
            print(idx, "🤪")
        }
    }
    for idx in 100..<110{
        print(idx, "🥲")
    }
}

//simpleQueue()

var inactiveQueue: DispatchQueue!

func concurrentQueues(){
    let anotherQueue = DispatchQueue(label: "Hola", qos: .utility, attributes: .initiallyInactive)
    inactiveQueue = anotherQueue
    
    anotherQueue.async{
        for idx in 0..<10{
            print(idx, "🤪")
        }
    }
    
    anotherQueue.async{
        for idx in 0..<10{
            print(idx, "😎")
        }
    }
    anotherQueue.async{
        for idx in 0..<10{
            print(idx, "🥲")
        }
    }
}

concurrentQueues()
