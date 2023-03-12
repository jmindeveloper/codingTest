//
//  main.swift
//  프로그래머스_뒤에있는큰수찾기_Swift_성공
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var answer = Array(repeating: -1, count: numbers.count)
    var stack = [Int]()
    
    for (index, value) in numbers.enumerated() {
        while !stack.isEmpty && numbers[stack[stack.count - 1]] < value {
            answer[stack.removeLast()] = value
        }
        stack.append(index)
    }
    
    return answer
}
