//
//  main.swift
//  백준_15989_1,2,3더하기4_Swift
//
//  Created by J_Min on 2022/08/10.
//

import Foundation

var dp = Array(repeating: 0, count: 10001)

dp[0] = 1
for i in 1...3 {
    for j in i..<10001 {
        dp[j] += dp[j - i]
    }
}

for _ in 0..<Int(readLine()!)! {
    print(dp[Int(readLine()!)!])
}
