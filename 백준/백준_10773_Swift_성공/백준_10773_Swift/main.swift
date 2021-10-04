//
//  main.swift
//  백준_10773_Swift
//
//  Created by J_Min on 2021/09/22.
//

import Foundation

let inputCount = Int(readLine()!)!
var arr = [Int]()
var result = 0

for _ in 1...inputCount {
    let input = Int(readLine()!)!
    
    if input > 0 {
        arr.append(input)
    } else {
        arr.removeLast()
    }
    
}

for i in arr {
    result += i
}

print(result)
