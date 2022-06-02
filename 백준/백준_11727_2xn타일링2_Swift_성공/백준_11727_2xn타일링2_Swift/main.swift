//
//  main.swift
//  백준_11727_2xn타일링2_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

let n = Int(readLine()!)!
var dp = [0, 1, 3]

if n >= 3 {
    for i in 3...n {
        dp.append((dp[i - 1] + 2 * dp[i - 2]) % 10007)
    }
}
print(dp[n])


