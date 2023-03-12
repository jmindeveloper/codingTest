//
//  main.swift
//  프로그래머스_덧칠하기_Swift_성공
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var paint = section[0] - 1
    var result = 0
    
    for s in section {
        if paint < s {
            paint = s + m - 1
            result += 1
        }
    }
    
    return result
}
