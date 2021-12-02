//
//  main.swift
//  백준_1758_Swift
//
//  Created by J_Min on 2021/12/02.
//

import Foundation

var input = Int(readLine()!)!
var result = 0
var tip = [Int]()

for _ in 1...input {
    tip.append(Int(readLine()!)!)
}

tip.sort(by: >)

for i in 1...tip.count {
    var sum = 0
    sum = tip[i - 1] - (i - 1)
    if sum > 0 {
        result += sum
    }
}

print(result)
