//
//  main.swift
//  프로그래머스_문자열내림차순으로배치하기_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ s:String) -> String {
    return Array(s).sorted(by: >).reduce("") { String($0) + String($1) }
}

print(solution("Zbcdefg"))
