//
//  main.swift
//  프로그래머스_카펫_Swift
//
//  Created by J_Min on 2021/11/20.
//

import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    
    var yellowWidth = 0
    var yellowHeight = 0
    var result = [Int]()
    
    while true {
        yellowWidth += 1
        yellowHeight = yellow / yellowWidth
        
        if yellow % yellowWidth != 0 || yellowWidth < yellowHeight {
            continue
        }
        
        if ((yellowWidth + 2) * 2) + (yellowHeight * 2) == brown {
            break
        }
    }
    
    print("yellowWidth --> \(yellowWidth)")
    print("yellowHeight --> \(yellowHeight)")
    
    result.append(yellowWidth + 2)
    result.append(yellowHeight + 2)
    
    return result
}

print(solution(24, 24))
