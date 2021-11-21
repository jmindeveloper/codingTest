//
//  main.swift
//  백준_17608_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

let input = Int(readLine()!)!
var arr = [Int]()
var count = 0
var popElement = 0


for _ in 0..<input {
    arr.append(Int(readLine()!)!)
}

for _ in 0..<input {
    let pop = arr.popLast()!
    if pop > popElement {
        count += 1
        popElement = pop
    }
}

print(count)
