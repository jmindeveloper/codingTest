//
//  main.swift
//  프로그래머스_멀리뛰기_Swift
//
//  Created by J_Min on 2022/06/18.
//

func solution(_ n:Int) -> Int {
    var dp = Array(repeating: 0, count: n + 1)
    
    if n == 1 {
        return 1
    }
    
    dp[0] = 1
    dp[1] = 1
    
    for i in 2...n {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 1234567
    }
    
    print(dp)
    return dp[n]
}
