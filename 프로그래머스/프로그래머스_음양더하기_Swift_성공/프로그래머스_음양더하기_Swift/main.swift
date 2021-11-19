//
//  main.swift
//  프로그래머스_음양더하기_Swift
//
//  Created by J_Min on 2021/11/16.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var result = 0
    
    for i in 0..<absolutes.count {
        if signs[i] == true {
            result += absolutes[i]
        } else {
            result -= absolutes[i]
        }
    }
    
    return result
}

