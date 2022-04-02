//
//  main.swift
//  백준_2437_저울_Swift
//
//  Created by J_Min on 2022/04/02.
//

import Foundation

let n = Int(readLine()!)!
//let weights = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let weights = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
//var result = 0

//out: for i in 1...Int.max {
//    if weights.contains(i) {
//        continue
//    }
//    var tmp = i
//    for weight in weights {
//
//        if tmp < weight {
//            continue
//        }
//
//        tmp -= weight
//
//        if tmp == 0 {
//            continue out
//        }
//
//    }
//    result = i
//    break
//}
//
//print(result)

var sum = 0

for i in 0..<n {
    
    if sum + 1 >= weights[i] {
        sum += weights[i]
    } else {
        break
    }
}

print(sum + 1)

// 참고: https://plplim.tistory.com/59
