//
//  main.swift
//  프로그래머스_위장_Swift
//
//  Created by J_Min on 2022/05/31.
//

import Foundation

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic = [String: [String]]()
    var result = 1
    
    for clothe in clothes {
        if dic[clothe[1]] == nil {
            dic[clothe[1]] = [clothe[0]]
        } else {
            dic[clothe[1]]!.append(clothe[0])
        }
    }
    
    for i in dic {
        result *= i.value.count + 1
    }
    result -= 1
    
    return result
}

print(solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]]))
