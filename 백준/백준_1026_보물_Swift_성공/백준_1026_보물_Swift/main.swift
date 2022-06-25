//
//  main.swift
//  백준_1026_보물_Swift
//
//  Created by J_Min on 2022/06/25.
//

import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int($0)! }
var b = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

for _ in 0..<n {
    a.sort(by: <)
    b.sort(by: >)
    let x = a.removeFirst()
    let y = b.removeFirst()
    
    result += x * y
}

print(result)

