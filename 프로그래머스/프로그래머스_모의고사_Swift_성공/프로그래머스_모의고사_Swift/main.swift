//
//  main.swift
//  프로그래머스_모의고사_Swift
//
//  Created by J_Min on 2021/09/20.
//

import Foundation

func solution(_ answers: [Int]) -> [Int] {
    let a = [1, 2, 3, 4, 5]
    let b = [2, 1, 2, 3, 2, 4, 2, 5]
    let c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var array = [0, 0, 0]
    var result = [Int]()
    
    for i in 0..<answers.count {
        if a[i % 5] == answers[i] { array[0] += 1 }
        if b[i % 8] == answers[i] { array[1] += 1 }
        if c[i % 10] == answers[i] { array[2] += 1}
    }
    
    for i in 0..<array.count {
        if array[i] == array.max() {
            result.append(i + 1)
        }
    }

    return result
}

