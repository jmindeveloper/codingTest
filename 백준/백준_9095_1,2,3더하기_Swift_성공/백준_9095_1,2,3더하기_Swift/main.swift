//
//  main.swift
//  백준_9095_1,2,3더하기_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

let testCase = Int(readLine()!)!

func solution(_ n: Int) {
  var dp = Array(repeating: 0, count: 12)
  dp[1] = 1
  dp[2] = 2
  dp[3] = 4

  if [1, 2, 3].contains(n) {
    print(dp[n])
    return
  }

  for i in 4...n {
    dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
  }

  print(dp[n])
}

for _ in 0..<testCase {
  let n = Int(readLine()!)!
  solution(n)
}

