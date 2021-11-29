//
//  main.swift
//  프로그래머스_두개뽑아서더하기_Swift
//
//  Created by J_Min on 2021/11/29.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            let sum = numbers[i] + numbers[j]
            if !result.contains(sum) {
                result.append(sum)
            }
        }
    }
    result.sort(by: <)
    
    
    return result
}

