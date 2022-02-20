//
//  main.swift
//  백준_13305_주유소_Swift
//
//  Created by J_Min on 2022/02/20.
//

// 38분

import Foundation

let cityCount = Int(readLine()!)!
let loadLength = readLine()!.split(separator: " ").map { Int($0)! }
let gasBill = readLine()!.split(separator: " ").map { Int($0)! }

var current = gasBill[0]
var next = gasBill[1]
var sumLoadLength = loadLength[0]
var result = 0

for i in 2..<gasBill.count {
    
    if current < next {
        sumLoadLength += loadLength[i - 1]
        next = gasBill[i]
        continue
    }
    
    if current >= next {
        result += current * sumLoadLength
        current = gasBill[i - 1]
        next = gasBill[i]
        sumLoadLength = loadLength[i - 1]
    }
}
result += current * sumLoadLength

print(result)
