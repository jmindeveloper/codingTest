//
//  main.swift
//  백준_2579_계단오르기_Swift
//
//  Created by J_Min on 2022/01/22.
//

import Foundation

let n = Int(readLine()!)!
var scores = [Int]()

for _ in 0..<n {
    let input = Int(readLine()!)!
    scores.append(input)
}

func solution(_ scores: [Int]) -> Int {
    var dp = [[Int]](repeating: Array(repeating: 0, count: 2), count: 301)
    
    if n == 1 {
        return scores[0]
    }
    
    dp[0][0] = scores[0]
    dp[1][1] = scores[1]
    dp[1][0] = scores[0] + scores[1]

    for i in 2..<n {
        dp[i][0] = dp[i - 1][1] + scores[i]
        dp[i][1] = max(dp[i - 2][0] + scores[i], dp[i - 2][1] + scores[i])
    }
    return dp[n - 1].max()!
}

print(solution(scores))
