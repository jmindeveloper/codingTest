//
//  main.swift
//  프로그래머스_기능개발_Swift
//
//  Created by J_Min on 2021/09/21.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var progresse = progresses
    var done = [Int]()
    var count = 0
    var sum = 0
    var result = [Int]()
    
    for i in 0..<progresse.count {
        for _ in 0...100 {
            if progresse[i] < 100 {
                progresse[i] += speeds[i]
                count += 1
            } else {
                done.append(count)
                count = 0
                break
            }
        }
    }
    
    done.append(999)
    sum = done[0]
    
    for i in 0..<done.count {
        if sum >= done[i] {
            count += 1
        } else {
            result.append(count)
            count = 1
            sum = done[i]
        }
    }
    return result
}

print(solution([20, 99, 93, 30, 50, 10], [5, 10, 1, 1, 30, 5]))
