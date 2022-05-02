//
//  main.swift
//  이코테_다이나믹_개미전사_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: n + 1)
dp[0] = arr[0]
dp[1] = arr[1]

for i in 2..<n {
    dp[i] = max(dp[i - 1], dp[i - 2] + arr[i])
}

print(dp[n - 1])
print(dp)
