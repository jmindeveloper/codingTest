//
//  main.swift
//  백준_2565_전깃줄_Swift
//
//  Created by J_Min on 2022/08/05.
//

import Foundation

var lines = [(0, 0)]

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    lines.append((input[0], input[1]))
}

lines.sort { $0.0 < $1.0 }
var dp = Array(repeating: 0, count: lines.count)

for i in 1..<lines.count {
    for j in 0..<i {
        if lines[i].1 > lines[j].1 {
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

print(lines.count - 1 - dp.max()!)
