//
//  main.swift
//  프로그래머스_땅따먹기_Swift
//
//  Created by J_Min on 2021/09/25.
//

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var answer = 0
    var lands = land
    var count = 0
    
    for i in 0..<lands.count {
        
        let max = lands[i].max()!
        let nextMax: Int!
        
        if count != lands.count - 1 {
            nextMax = land[i + 1].max()!
        }
        
        answer += max
        let index = land[i].firstIndex(of: max)!
        count += 1
        
        if count == lands.count {
            break
        }
        
        lands[i + 1].remove(at: index)
    }
    
    return answer
}

print(solution([[4, 3, 2, 1], [2, 2, 2, 1], [6, 6, 6, 4], [8, 7, 6, 5]]))
