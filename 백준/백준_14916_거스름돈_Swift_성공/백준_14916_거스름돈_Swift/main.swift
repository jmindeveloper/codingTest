//
//  main.swift
//  백준_14916_거스름돈_Swift
//
//  Created by J_Min on 2022/05/20.
//

import Foundation

let input = Int(readLine()!)!
var count = 0
var isFinish = false

func dfs(x: Int, sum: Int) {
    
    if sum > input || isFinish {
        return
    }
    
    if sum == input {
        print(x)
        isFinish = true
    } else {
        for i in [5, 2] {
            dfs(x: x + 1, sum: sum + i)
        }
    }
}

dfs(x: 0, sum: 0)
if !isFinish {
    print("-1")
}
