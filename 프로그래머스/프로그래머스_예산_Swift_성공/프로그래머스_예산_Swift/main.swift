//
//  main.swift
//  프로그래머스_예산_Swift
//
//  Created by J_Min on 2021/11/20.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    let arr = d.sorted(by: <)
    var budget = budget
    var count = 0
    
    for i in 0..<arr.count {
        
        if budget < arr[i] {
            break
        }
        
        budget -= arr[i]
        count += 1
    }
    
    return count
}

print(solution([1, 3, 2, 5, 4], 9))
