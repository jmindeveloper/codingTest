//
//  main.swift
//  프로그래머스_예상대진표_Swift
//
//  Created by J_Min on 2021/10/04.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var a = a
    var b = b

    while a != b {

        if (a.isMultiple(of: 2) && a - 1 == b) || (!a.isMultiple(of: 2) && a + 1 == b) {
            break
        }

        if a % 2 == 0 {
            a = a / 2
        } else {
            a = (a + 1) / 2
        }
        if b & 2 == 0 {
            b = b / 2
        } else {
            b = (b + 1)
        }
        answer += 1
    }

    return answer
}




print(solution(8, 4, 5))
