//
//  main.swift
//  이코테_큰수의법칙_Swift
//
//  Created by J_Min on 2022/03/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var m = input[1]
let k = input[2]
var result = 0

let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let maxNum = nums[nums.count - 1]
let secondMaxNum = nums[nums.count - 2]

while m > 0 {
    
    for _ in 0..<k {
        result += maxNum
        m -= 1
    }
    
    result += secondMaxNum
    m -= 1
    
}

print(result)
