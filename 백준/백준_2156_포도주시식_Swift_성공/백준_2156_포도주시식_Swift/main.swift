//
//  main.swift
//  백준_2156_포도주시식_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

let n = Int(readLine()!)!
var arr = [0]
var dp = Array(repeating: 0, count: n + 1)

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

if n == 1 {
    print(arr[1])
} else if n == 2 {
    print(arr[1] + arr[2])
} else {
    dp[1] = arr[1]
    dp[2] = arr[1] + arr[2]
    
    for i in 3...n {
        dp[i] = max(arr[i] + arr[i - 1] + dp[i - 3], arr[i] + dp[i - 2], dp[i - 1])
    }
    
    print(dp.max()!)
}

