//
//  main.swift
//  프로그래머스_롤케이크자르기_Swift_성공
//
//  Created by J_Min on 2023/07/03.
//

import Foundation

func solution(_ topping:[Int]) -> Int {
    var chulsu: [Int: Int] = [:]
    var brother: [Int: Int] = [:]
    var result = 0
    
    for t in topping {
        let c = chulsu[t] ?? 0
        chulsu[t] = c + 1
    }
    
    for t in topping {
        let c = brother[t] ?? 0
        brother[t] = c + 1
        chulsu[t] = chulsu[t]! - 1
        if chulsu[t] == 0 {
            chulsu.removeValue(forKey: t)
        }
        
        if brother.count == chulsu.count {
            result += 1
        }
    }
    
    return result
}

