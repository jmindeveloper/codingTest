//
//  main.swift
//  프로그래머스_n^2배열자르기_Swift
//
//  Created by J_Min on 2022/06/22.
//

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var arr = [Int]()
    var left = Int(left)
    var right = Int(right)
    let num1 = left / n + 1
    let num2 = right / n + 1
    for i in num1...num2 {
        for j in 1...n {
            if i <= j {
            arr.append(j)
            } else {
                arr.append(i)
            }
        }
    }
    
    right = right - left
    left = left % n
    right = left + right
    
    return Array(arr[left...right])
}

print(solution(4, 7, 14))
