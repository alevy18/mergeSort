import UIKit

func bubbleSort(array: inout [Int]){
    var didSwap = false
    var idx = 0
    while idx < array.count - 1{
        if array[idx] > array[idx + 1]{
            swap(idx1: idx, idx2: idx+1, array: &array)
            didSwap = true
        }
        idx += 1
        if idx == array.count - 2 && didSwap == true{
            idx = 0
            didSwap = false
        }
    }
}

func swap(idx1: Int, idx2: Int, array: inout [Int]) {
    let temp = array[idx1]
    array[idx1] = array[idx2]
    array[idx2] = temp
}

var arr = [12,54,6,7,7,78,4,2,1,256,]

bubbleSort(array: &arr)

print(arr)
