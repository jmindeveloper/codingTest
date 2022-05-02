//
//  main.swift
//  이코테_다이나믹_바닥공사_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

let n = Int(readLine()!)!
var dp: [UInt] = Array(repeating: 0, count: n + 1)

dp[0] = 1
dp[1] = 3
dp[2] = 5

for i in 3...n {
    dp[i] = dp[i - 2] * 2 + dp[i - 1]
}

print(dp[n - 1] % 796796)
