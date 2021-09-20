//
//  main.swift
//  프로그래머스_가장큰수_Swift
//
//  Created by J_Min on 2021/09/20.
//

import Foundation

func solution(_ numbers: [Int]) -> String {
    let sorted: [Int] = numbers.sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")!}
    if sorted[0] == 0 {
        return "0"
    }
    return sorted.reduce("") { $0 + "\($1)"}
}

print(solution([3, 30, 34, 5, 9]))

