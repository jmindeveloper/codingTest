//
//  main.swift
//  프로그래머스_짝지어제거하기_Swift
//
//  Created by J_Min on 2022/03/11.
//

import Foundation

import Foundation

func solution(_ s:String) -> Int{
    
    let sarr = Array(s)
    var stack: [String.Element] = [" "]
    
    for i in sarr {
        stack.append(i)
        
        if stack[stack.count - 1] == stack[stack.count - 2] {
            stack.removeLast()
            stack.removeLast()
        }
    }
    
    return stack.count == 1 ? 1 : 0
}
