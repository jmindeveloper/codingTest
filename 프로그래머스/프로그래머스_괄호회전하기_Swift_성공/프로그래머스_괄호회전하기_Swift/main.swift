//
//  main.swift
//  프로그래머스_괄호회전하기_Swift
//
//  Created by J_Min on 2022/06/04.
//

import Foundation

func checkString(_ s: String) -> Bool {
    var s = s
    
    while !s.isEmpty {
        var replacingString = s
        replacingString = replacingString.replacingOccurrences(of: "()", with: "")
        replacingString = replacingString.replacingOccurrences(of: "[]", with: "")
        replacingString = replacingString.replacingOccurrences(of: "{}", with: "")
        if replacingString == s {
            return false
        } else {
            s = replacingString
        }
    }
    
    return true
}

func solution(_ s:String) -> Int {
    
    var s = s
    var result = 0
    
    for _ in 0..<s.count {
        if checkString(s) {
            result += 1
        }
        s.append(s.removeFirst())
    }
    
    
    return result
}

//print(solution("[](){}"))
print(solution("({[]})}{"))
print(solution("{{{}"))
