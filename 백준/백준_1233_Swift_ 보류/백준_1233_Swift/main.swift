//
//  main.swift
//  백준_1233_Swift
//
//  Created by J_Min on 2021/08/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var array: [Int] = []

for i in 1...input[0] {
    for j in 1...input[1] {
        for k in 1...input[2] {
            array.append(i + j + k)
        }
    }
}

var setArray: [Int] = []
var count: [Int] = []
var a = 0

for i in array.sorted() {
    if setArray.contains(i) == false {
        setArray.append(i)
    }
}
print(setArray)
for i in setArray {
    
}

// 보류

//let arraySorted = array.sorted()
//var removedDictionary: [Int: Int] = [:]
//var removedArray: [Int] = []
//var a = 1
//
//for i in arraySorted {
//    if removedArray.contains(i) == false {
//        a = 1
//        removedDictionary[i] = a
//        removedArray.append(i)
//    } else {
//        a += 1
//        removedDictionary[i] = a
//    }
//}
//
//let sortedDictionary = removedDictionary.sorted(by: { $0.1 < $1.1 })
//print(sortedDictionary)
//
//
