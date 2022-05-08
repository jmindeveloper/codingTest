//
//  main.swift
//  백준_1931_회의실배정_Swift
//
//  Created by J_Min on 2022/05/06.
//

import Foundation

let n = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0], input[1]))
}
//arr.sort { $0.1 < $1.1 }
arr.sort { $0.1 == $1.1 ? $0.0 < $0.1 : $0.1 < $1.1 }
var result = 0
var endTime = 0

for i in arr {
    if i.0 >= endTime {
        endTime = i.1
        result += 1
    }
}

print(result)
