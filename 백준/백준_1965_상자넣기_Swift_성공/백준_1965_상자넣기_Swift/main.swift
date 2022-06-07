//
//  main.swift
//  백준_1965_상자넣기_Swift
//
//  Created by J_Min on 2022/06/07.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
arr.insert(0, at: 0)
var dp = Array(repeating: 1, count: n + 1)

for i in 1...n {
    for j in 1..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[i], dp[j] + 1)
        }        
    }
}

print(dp.max()!)
