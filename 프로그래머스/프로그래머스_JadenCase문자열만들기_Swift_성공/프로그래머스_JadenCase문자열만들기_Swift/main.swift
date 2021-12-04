//
//  main.swift
//  프로그래머스_JadenCase문자열만들기_Swift
//
//  Created by J_Min on 2021/12/04.
//

import Foundation

func solution(_ s: String) -> String {
    
    var count = 0
    var result = ""
    
    for i in s {
        if i != " " {
            if count == 0 {
                result += String(i).uppercased()
            } else {
                result += String(i).lowercased()
            }
            count += 1
        } else {
            result += " "
            count = 0
        }
    }
    
    return result
}

print(solution("3people unFollowed me"))
