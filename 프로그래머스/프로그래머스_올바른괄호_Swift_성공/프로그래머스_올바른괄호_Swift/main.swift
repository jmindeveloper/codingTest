//
//  main.swift
//  프로그래머스_올바른괄호_Swift
//
//  Created by J_Min on 2022/03/26.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var stack = [String.Element]()

    for i in s {
        if i == "(" {
            stack.append("(")
        } else if stack.isEmpty && i == ")" {
            return false
        } else {
            stack.removeLast()
        }
    }

    if !stack.isEmpty {
        return false
    }

    return true
}

