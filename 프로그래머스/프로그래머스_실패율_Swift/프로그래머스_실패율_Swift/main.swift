//
//  main.swift
//  프로그래머스_실패율_Swift
//
//  Created by J_Min on 2022/06/03.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    // 스테이지: 실패율
    var dic = [Int: Double]()
    
    for i in 1...N {
        var nonClearPlayerCount = 0
        var clearPlayerCount = 0
        
        for j in stages {
            if i <= j {
                clearPlayerCount += 1
                if i < j {
                    nonClearPlayerCount += 1
                }
            }
        }
        nonClearPlayerCount = clearPlayerCount - nonClearPlayerCount
        
        
        if nonClearPlayerCount == 0 || clearPlayerCount == 0 {
            dic[i] = 0
        } else {
            dic[i] = Double(nonClearPlayerCount) / Double(clearPlayerCount)
        }

    }

    let result = dic.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value}.map { $0.key }
    // print(result)
    
    return result
}

print(solution(4, [4,4,4,4,4]))
print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))

