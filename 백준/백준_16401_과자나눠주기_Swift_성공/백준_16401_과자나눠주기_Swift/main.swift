//
//  main.swift
//  백준_16401_과자나눠주기_Swift
//
//  Created by J_Min on 2022/02/17.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let kidCount = input[0]
let snackCount = input[1]
let snackLength = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var min = 1
var max = snackLength.max()!
var beforeLength = 0
var answer = 0

while min <= max {
    
    let mid = (min + max) / 2
    let snackFilted = snackLength.filter { $0 >= mid }
    var sum = 0
    
    for i in snackFilted {
        sum += i / mid
    }
    
    if sum >= kidCount {
        if mid > answer {
            answer = mid
        }
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(answer)
