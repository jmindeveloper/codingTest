//
//  main.swift
//  백준_1138_한줄로서기_Swift
//
//  Created by J_Min on 2022/05/05.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var result = Array(repeating: 0, count: n)

for i in 0..<n {
    var cnt = 0
    for j in 0..<n {
        if cnt == arr[i], result[j] == 0 {
            result[j] = i + 1
            break
        } else if result[j] == 0 {
            cnt += 1
        }
    }
}

for i in result {
    print(i, terminator: " ")
}
