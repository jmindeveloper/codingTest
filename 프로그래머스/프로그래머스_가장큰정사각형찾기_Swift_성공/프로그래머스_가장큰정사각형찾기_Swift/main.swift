//
//  main.swift
//  프로그래머스_가장큰정사각형찾기_Swift
//
//  Created by J_Min on 2022/06/22.
//

import Foundation

func solution(_ board:[[Int]]) -> Int {
    let row = board.count
    let column = board.first!.count
    var dp = board
    var result = 0
    
    for i in 1..<row {
        for j in 1..<column {
            if dp[i][j] == 0 { continue }
            let a = dp[i - 1][j]
            let b = dp[i - 1][j - 1]
            let c = dp[i][j - 1]
            dp[i][j] = min(a, b, c) + 1
        }
    }
    
    for i in dp {
        result = max(result, i.max()!)
    }
    
    return result * result
}

print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
