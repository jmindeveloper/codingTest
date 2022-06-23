//
//  main.swift
//  프로그래머스_문자열다루기기본_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ s:String) -> Bool {
    if s.filter({ $0.isNumber }).count == s.count, (s.count == 6 || s.count == 4) {
        return true
    } else {
        return false
    }
}

