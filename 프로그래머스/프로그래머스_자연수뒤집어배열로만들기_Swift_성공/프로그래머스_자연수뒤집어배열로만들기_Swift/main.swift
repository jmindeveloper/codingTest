//
//  main.swift
//  프로그래머스_자연수뒤집어배열로만들기_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    return Array(String(n)).reversed().map { Int(String($0))! }
}
print(solution(12345))
