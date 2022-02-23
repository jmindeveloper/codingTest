//
//  main.swift
//  백준_12865_평범한배낭_Swift
//
//  Created by J_Min on 2022/02/23.
//

import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1]
var dp = [[Int]](repeating: Array(repeating: 0, count: k + 1), count: n + 1)

for i in 1...n {
    let product = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...k {
        if j < product[0] {
            dp[i][j] = dp[i - 1][j]
        } else {
            dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - product[0]] + product[1])
        }
    }
}

print(dp[n][k])
