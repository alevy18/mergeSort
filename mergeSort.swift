//
//  main.swift
//  testCode
//
//  Created by Aaron Levy on 3/23/21.
//

import Foundation

func mergeSort(array: [Int]) -> [Int] {
    print(array)
    if array.count <= 1 {
        return array
    }
    
    
    let midBreakPoint = (array.count - 1)/2
    //print(midBreakPoint)
    let startArr = array[0 ... midBreakPoint]
    print("start ", startArr)
    let endArr = array[midBreakPoint + 1 ..< array.count]
    print("end", endArr)
    
    return sortSubArrs(arr1: mergeSort(array: Array(startArr)), arr2: mergeSort(array: Array(endArr)))
}




func sortSubArrs(arr1: [Int], arr2: [Int]) -> [Int]{
    var fusedArray = [Int](repeating: 0, count: arr1.count + arr2.count)
    print(arr1, arr2)

    
    var arr1Pointer = 0
    var arr2Pointer = 0
    var fusedArrPointer = 0
    
    while arr1Pointer < arr1.count && arr2Pointer < arr2.count {
        if arr1[arr1Pointer] < arr2[arr2Pointer]{
            fusedArray[fusedArrPointer] = arr1[arr1Pointer]
            arr1Pointer += 1
        }else {
            fusedArray[fusedArrPointer] = arr2[arr2Pointer]
            arr2Pointer += 1
        }
        fusedArrPointer += 1
    }
    
    while arr1Pointer < arr1.count {
        fusedArray[fusedArrPointer] = arr1[arr1Pointer]
        arr1Pointer += 1
        fusedArrPointer += 1
    }
    
    while arr2Pointer < arr2.count {
        fusedArray[fusedArrPointer] = arr2[arr2Pointer]
        arr2Pointer += 1
        fusedArrPointer += 1
    }
    
    return fusedArray
}

var testerArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var testArr2 = [9,8,7,6,5,4,3,2,1,0]

print(mergeSort(array: testArr2))

