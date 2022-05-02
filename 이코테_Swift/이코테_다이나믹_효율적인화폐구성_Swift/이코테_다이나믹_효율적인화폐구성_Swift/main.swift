//
//  main.swift
//  이코테_다이나믹_효율적인화폐구성_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
let coins = readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 10001, count: m + 1)
dp[0] = 0

for i in 0..<n {
    for j in coins[i]..<m {
        dp[j] = min(dp[j], dp[j - coins[i]] + 1)
    }
}

if dp[m - 1] == 10001 {
    print(-1)
} else {
    print(dp[m - 1])
}
