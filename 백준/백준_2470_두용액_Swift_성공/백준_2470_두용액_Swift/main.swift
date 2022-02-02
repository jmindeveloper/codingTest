//
//  main.swift
//  백준_2470_두용액_Swift
//
//  Created by J_Min on 2022/02/02.
//

import Foundation

let count = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var min = 0
var max = arr.count - 1
var answer = Array(repeating: 0, count: 2)
var before: Int?

while min < max {
    
    let sum = arr[min] + arr[max]
    
    if let beforeUnwrapping = before {
        if beforeUnwrapping > abs(sum) {
            before = abs(sum)
            answer[0] = arr[min]
            answer[1] = arr[max]
        }
    } else {
        before = abs(sum)
        answer[0] = arr[min]
        answer[1] = arr[max]
    }

    if sum == 0 {
        break
    } else if sum < 0 {
        min += 1
    } else {
        max -= 1
    }
    
}

print(answer[0], answer[1])
