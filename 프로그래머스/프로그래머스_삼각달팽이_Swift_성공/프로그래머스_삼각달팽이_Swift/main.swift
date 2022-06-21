//
//  main.swift
//  프로그래머스_삼각달팽이_Swift
//
//  Created by J_Min on 2022/06/21.
//

import Foundation

enum Direction {
    case right, up, down
}

func solution(_ n:Int) -> [Int] {
    var array = [[Int]]()
    
    for i in 1...n {
        let arr = Array(repeating: 0, count: i)
        array.append(arr)
    }
    var n = n
    var direction: Direction = .down
    var index = (0, 0)
    var e = 1
    
    while true {
        if n == 0 {
            break
        }
        for i in 0..<n {
            array[index.0][index.1] = e
            e += 1
            switch direction {
            case .right:
                index = (index.0, index.1 + 1)
            case .up:
                index = (index.0 - 1, index.1 - 1)
            case .down:
                index = (index.0 + 1, index.1)
            }
        }
            
        switch direction {
        case .right:
            direction = .up
            index = (index.0 - 1, index.1 - 2)
        case .up:
            direction = .down
            index = (index.0 + 2, index.1 + 1)
        case .down:
            direction = .right
            index = (index.0 - 1, index.1 + 1)
        }
        n -= 1
    }
    
    var result = [Int]()
    for i in array {
        for j in i {
            result.append(j)
        }
    }
    
    return result
}

print(solution(4))
