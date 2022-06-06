//
//  main.swift
//  프로그래머스_피보나치수_Swift
//
//  Created by J_Min on 2022/06/06.
//

func solution(_ n:Int) -> Int {

    var dp = Array(repeating: 0, count: n + 1)

    dp[1] = 1

    for i in 2...n {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 1234567
    }

    return dp[n]
}

print(solution(100000))
