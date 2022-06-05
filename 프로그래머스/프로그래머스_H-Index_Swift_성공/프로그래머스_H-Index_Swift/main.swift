//
//  main.swift
//  프로그래머스_H-Index_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    
    let sortArr = citations.sorted(by: >)

    for i in 0..<sortArr.count {
        if i >= sortArr[i] {
            return i
        }
    }
    return sortArr.count
}

print(solution([3, 0, 6, 1, 5]))
