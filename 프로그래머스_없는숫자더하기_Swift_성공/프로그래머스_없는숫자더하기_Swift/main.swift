//
//  main.swift
//  프로그래머스_없는숫자더하기_Swift
//
//  Created by J_Min on 2021/09/25.
//

import Foundation

func solution(_ numbers: [Int]) -> Int {
    
    var sum = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9
    
    for i in numbers {
        sum -= i
    }
    
    return sum
}

print(solution([5, 8, 4, 0, 6, 7, 9]))
