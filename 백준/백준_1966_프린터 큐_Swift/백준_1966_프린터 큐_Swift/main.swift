//
//  main.swift
//  백준_1966_프린터 큐_Swift
//
//  Created by J_Min on 2022/01/22.

// 21분

import Foundation

let testCase = Int(readLine()!)!

func solution(_ n: Int, _ m: Int, _ importance: [Int]) -> Int {
    var importance = importance
    var count = 0
    var m = m
    
    while true {
        let max = importance.max()
        if importance.first != max {
            importance.append(importance.removeFirst())
            m -= 1
            if m < 0 {
                m = importance.count - 1
            }
        } else {
            importance.removeFirst()
            count += 1
            if m == 0 {
                return count
            } else {
                m -= 1
            }
        }
    }
    return count
}

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let m = input[1]
    let importance = readLine()!.split(separator: " ").map { Int($0)! }
    print("\(solution(n, m, importance))")
}


