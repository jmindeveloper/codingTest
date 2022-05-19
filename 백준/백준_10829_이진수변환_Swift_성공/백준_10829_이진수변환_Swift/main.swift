//
//  main.swift
//  백준_10829_이진수변환_Swift
//
//  Created by J_Min on 2022/05/19.
//

import Foundation

let input = Int(readLine()!)!
var result = ""

func dfs(x: Int) {
    if x <= 0 {
        return
    }
    dfs(x: x / 2)
    print(x % 2, terminator: "")
}

dfs(x: input)
