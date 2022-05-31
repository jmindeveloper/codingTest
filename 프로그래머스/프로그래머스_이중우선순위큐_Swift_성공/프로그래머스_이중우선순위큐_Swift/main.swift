//
//  main.swift
//  프로그래머스_이중우선순위큐_Swift
//
//  Created by J_Min on 2022/05/31.
//

import Foundation

func solution(_ operations:[String]) -> [Int] {
    
    var queue = [Int]()
    var result = [Int]()
    
    for i in operations {
        let oper = i.split(separator: " ").map { String($0) }
        if oper[0] == "I" {
            queue.append(Int(oper[1])!)
        } else if oper [0] == "D", !queue.isEmpty {
            if oper[1] == "1" {
                queue.sort(by: <)
                queue.removeLast()
            } else if oper[1] == "-1" {
                queue.sort(by: >)
                queue.removeLast()
            }
        }
    }
    
    if queue.isEmpty {
        result = [0, 0]
    } else {
        result = [queue.max()!, queue.min()!]
    }
    
    return result
}

print(solution(["I -45", "I 653", "D 1", "I -642", "I 45", "I 97", "D 1", "D -1", "I 333"]))
