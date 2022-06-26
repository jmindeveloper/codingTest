//
//  main.swift
//  백준_2193_이친수_Swift
//
//  Created by J_Min on 2022/06/26.
//

import Foundation

let n = Int(readLine()!)!

func solution(_ n: Int) {
    if n < 3 {
        print("1")
        return
    }
    var dp = [0, 1, 1]
    
    for i in 3...n {
        dp.append(dp[i - 1] + dp[i - 2])
    }
    
    print(dp.last!)
}


