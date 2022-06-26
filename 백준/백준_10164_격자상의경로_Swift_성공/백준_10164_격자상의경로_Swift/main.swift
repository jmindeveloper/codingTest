//
//  main.swift
//  백준_10164_격자상의경로_Swift
//
//  Created by J_Min on 2022/06/26.
//

import Foundation

let nmk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nmk[0], m = nmk[1]
let k = nmk[2]
var dp = Array(repeating: Array(repeating: 1, count: m), count: n)
var targetIndex: (n: Int, m: Int) {
    if k % m == 0 {
        return (k / m - 1, m - 1)
    } else {
        return (k / m, k % m - 1)
    }
}

func isKZeroSolution() {
    for i in 1..<n {
        for j in 1..<m {
            dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
        }
    }
    print(dp.last!.last!)
    return
}

func isKNotZeroSolution() {
    if targetIndex.n != 0, targetIndex.m != 0 {
        for i in 1...targetIndex.n {
            for j in 1...targetIndex.m {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
    }
    
    let target = dp[targetIndex.n][targetIndex.m]
    n = n - targetIndex.n
    m = m - targetIndex.m
    dp = Array(repeating: Array(repeating: target, count: m), count: n)
    
    for i in 1..<n {
        for j in 1..<m {
            dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
        }
    }
    
    print(dp.last!.last!)
}

if k == 0 || n == 1 || k == n * m {
    isKZeroSolution()
} else {
    isKNotZeroSolution()
}
