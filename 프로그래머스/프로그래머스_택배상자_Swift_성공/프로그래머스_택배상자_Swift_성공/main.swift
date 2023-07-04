//
//  main.swift
//  프로그래머스_택배상자_Swift_성공
//
//  Created by J_Min on 2023/07/04.
//

import Foundation

func solution(_ order:[Int]) -> Int {
    var result: Int = 0
    var stack: [Int] = []
    var max: Int = 0
    
    for o in order {
        if stack.last == o {
            stack.removeLast()
            result += 1
        } else if max < o {
            result += 1
            for b in max+1..<o {
                stack.append(b)
            }
            max = o
        } else {
            return result
        }
    }
    return result
}
