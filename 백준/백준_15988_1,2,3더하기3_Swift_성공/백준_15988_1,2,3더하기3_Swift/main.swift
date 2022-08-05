//
//  main.swift
//  백준_15988_1,2,3더하기3_Swift
//
//  Created by J_Min on 2022/08/05.
//

import Foundation

var dp = [1, 2, 4]

for i in 3...1000000 {
    dp.append((dp[i - 1] + dp[i - 2] + dp[i - 3]) % 1_000_000_009)
}

for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    print(dp[n - 1])
}

