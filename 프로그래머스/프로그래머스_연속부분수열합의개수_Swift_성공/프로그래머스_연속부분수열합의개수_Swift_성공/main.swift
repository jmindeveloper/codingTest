//
//  main.swift
//  프로그래머스_연속부분수열합의개수_Swift_성공
//
//  Created by J_Min on 2023/06/29.
//

import Foundation

func solution(_ elements:[Int]) -> Int {
    var map: [[Int]] = Array(repeating: Array(repeating: 0, count: elements.count), count: elements.count)
    map[0] = elements
    
    for i in 1..<elements.count {
        for j in 0..<elements.count {
            var sumIndex = j + i
            if sumIndex >= elements.count {
                sumIndex -= elements.count
            }
            map[i][j] = map[i - 1][j] + elements[sumIndex]
        }
    }
        
    return Set(map.flatMap { $0 }).count
}
