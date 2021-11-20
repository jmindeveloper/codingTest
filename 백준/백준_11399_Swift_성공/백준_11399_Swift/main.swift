//
//  main.swift
//  백준_11399_Swift
//
//  Created by J_Min on 2021/11/20.
//

import Foundation

var trash = readLine()!
var input = readLine()!.split(separator: " ").map { Int($0)! }
var time = 0
var result = 0

input = input.sorted(by: <)

for i in 0..<input.count {
    time = time + input[i]
    print(time)
    result += time
}

print(result)
