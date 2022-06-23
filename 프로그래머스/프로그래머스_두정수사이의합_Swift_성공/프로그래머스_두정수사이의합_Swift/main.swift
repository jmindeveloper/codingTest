//
//  main.swift
//  프로그래머스_두정수사이의합_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var sum = 0
    
    if a == b { return a }
    
    if a < b {
        for i in a...b {
           sum += i
        }
    } else {
        for i in b...a {
            sum += i
        }
    }
    
    return sum
}

print(solution(5, 3))

