//
//  main.swift
//  백준_2012_등수매기기_Swift
//
//  Created by J_Min on 2022/01/23.
//
// 9분

import Foundation

let input1 = Int(readLine()!)!
var rankings = [Int]()
var result: UInt = 0

for _ in 0..<input1 {
    let input = Int(readLine()!)!
    rankings.append(input)
}

rankings = rankings.sorted()

for i in 0..<input1 {
    let differente = rankings[i] - (i + 1)
    result += differente.magnitude
}

print(result)
