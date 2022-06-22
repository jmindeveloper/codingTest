//
//  main.swift
//  프로그래머스_n진수게임_Swift
//
//  Created by J_Min on 2022/06/22.
//

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var str = ""
    var result = ""
    
    for i in 0...t * m {
        str += (String(i, radix: n))
    }
    
    for i in 0..<t {
        let ind = i * m + p - 1
        let index = str.index(str.startIndex, offsetBy: ind)
        result += String(str[index])
    }
    
    return result.uppercased()
}

print(solution(13, 10, 10, 5))
