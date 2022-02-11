//
//  main.swift
//  백준_1065_한수_Swift
//
//  Created by J_Min on 2022/02/11.
//

import Foundation

let input = Int(readLine()!)!

func hansu(_ num : Int) -> Bool {
    var num = num
    let d = num % 10 - (num % 100) / 10
    var n = num % 10
    num /= 10
    while num > 0 {
        if d != n - num % 10 { return false }
        n = num % 10
        num /= 10
    }
    return true
}

func solution(_ num: Int) -> Int {
    
    var answer = 0
    
    if num < 100 {
        return num
    }
    
    for i in 100...num {
        if hansu(i) {
            answer += 1
        }
    }
    
    return answer + 99
}

print(solution(input))
