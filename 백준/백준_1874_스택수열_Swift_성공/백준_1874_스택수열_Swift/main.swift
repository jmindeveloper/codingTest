//
//  main.swift
//  백준_1874_스택수열_Swift
//
//  Created by J_Min on 2022/01/22.

// 21분

import Foundation

let n = Int(readLine()!)!
var sequence = [Int]()
var stack = [Int]()
var result = [String]()
for _ in 0..<n {
    let input = Int(readLine()!)!
    sequence.append(input)
}

for i in 1...n {
    stack.append(i)
    result.append("+")
    
    while stack.last == sequence.first && (!stack.isEmpty || !sequence.isEmpty)  {
        sequence.removeFirst()
        stack.removeLast()
        result.append("-")
    }
}

if !stack.isEmpty {
    print("NO")
} else {
    for i in result {
        print(i)
    }
}
