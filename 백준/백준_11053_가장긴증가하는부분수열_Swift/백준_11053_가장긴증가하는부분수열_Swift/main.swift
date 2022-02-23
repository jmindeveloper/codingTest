//
//  main.swift
//  백준_11053_가장긴증가하는부분수열_Swift
//
//  Created by J_Min on 2022/02/23.
//

import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var dp = [Int](repeating: 1, count: n)

for i in 1..<n {
    for j in 0..<i {
        if nums[i] > nums[j] {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(dp.max()!)
