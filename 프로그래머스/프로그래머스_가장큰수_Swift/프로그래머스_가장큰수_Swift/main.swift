//
//  main.swift
//  프로그래머스_가장큰수_Swift
//
//  Created by J_Min on 2021/09/20.
//

import Foundation

func solution(_ numbers: [Int]) -> String {
    let sortedNumber: [Int] = numbers.sorted { "\($0)\($1)" > "\($1)\($0)"
    }
    if sortedNumber[0] == 0 {
        return "0"
    }
    return sortedNumber.reduce("") { $0 + "\($1)"}
}

print(solution([3, 30, 34, 5, 9]))

