//
//  main.swift
//  백준_11057_오르막수_Swift
//
//  Created by J_Min on 2022/06/07.
//

import Foundation

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 1, count: 10), count: n + 1)

for i in 1...n {
  for j in 1...9 {
    dp[i][j] = (dp[i][j - 1] + dp[i - 1][j]) % 10007
  }
}

print(dp.last!.last!)
