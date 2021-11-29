//
//  main.swift
//  프로그래머스_N개의최소공배수_Swift
//
//  Created by J_Min on 2021/11/29.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    let arr = arr.sorted()
    var cnt = 1
    var check = false
    var result = 0
    
    while !check {
        let sum = arr[arr.count - 1] * cnt
        print("sum --> \(sum)")
        
        for i in arr {
            if sum % i == 0 {
                if i == arr[arr.count - 1] {
                    result = sum
                    check = true
                } else {
                    continue
                }
            } else {
                cnt += 1
                break
            }
        }
    }
    return result
}

print(solution([4, 3, 1]))

