//
//  main.swift
//  이코테_다이나믹_1로만들기_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

var x = Int(readLine()!)!
var dp = Array(repeating: 0, count: 30001)

for i in 2...x {
    dp[i] = dp[i - 1] + 1
    
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i / 2] + 1)
    }
    
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i / 3] + 1)
    }
    
    if i % 5 == 0 {
        dp[i] = min(dp[i], dp[i / 5] + 1)
    }
}


print(dp[x])
