//
//  main.swift
//  백준_1654_랜선자르기_Swift
//
//  Created by J_Min on 2022/02/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let k = input[0], n = input[1]

var arr = [Int]()
for _ in 0..<k {
    arr.append(Int(readLine()!)!)
}

var min = 1
var max = arr.max()!
var answer = 0

while min <= max {
    let mid = (max + min) / 2
    var sum = 0
    for i in arr {
        sum += i / mid
    }
    
    if sum >= n {
        if mid > answer {
            answer = mid
        }
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(answer)
