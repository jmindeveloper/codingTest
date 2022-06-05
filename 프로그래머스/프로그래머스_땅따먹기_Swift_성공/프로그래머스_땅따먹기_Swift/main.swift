//
//  main.swift
//  프로그래머스_땅따먹기_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

/* dfs - 시간초과
func solution(_ land:[[Int]]) -> Int{
    var result = 0
    
    func dfs(_ x: Int, _ y: Int, _ score: Int) {
        if x == land.count - 1 {
            result = max(result, score)
        } else {
            for i in 0...3 {
                if i != y {
                    dfs(x + 1, i, score + land[x + 1][i])
                }
            }
        }
    }
    
    dfs(0, 0, land[0][0])
    dfs(0, 1, land[0][1])
    dfs(0, 2, land[0][2])
    dfs(0, 3, land[0][3])
    
    return result
}
*/

// dp
import Foundation

func solution(_ land:[[Int]]) -> Int{
    var dp = Array(repeating: Array(repeating: 0, count: 4), count: land.count - 1)
    dp.insert(land.first!, at: 0)
    
    for i in 1..<dp.count {
        for j in 0..<4 {
            for k in 0..<4 {
                if j != k {
                    dp[i][j] = max(dp[i - 1][k] + land[i][j], dp[i][j])
                }
            }
        }
    }
    
    return dp.last!.max()!
}

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
print(solution([[0, 0, 1, 10], [0, 0, 3, 100]]))
