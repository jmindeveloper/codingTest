//
//  main.swift
//  백준_9237_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

let input = Int(readLine()!)!
let trees = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
var arr = [Int]()

for i in 0..<trees.count {
    arr.append(trees[i] + i + 1)
}

print(arr.max()! + 1)

