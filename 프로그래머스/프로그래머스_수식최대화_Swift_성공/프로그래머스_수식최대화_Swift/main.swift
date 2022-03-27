//
//  main.swift
//  프로그래머스_수식최대화_Swift
//
//  Created by J_Min on 2022/03/27.
//

import Foundation

func strSplit(_ str: String) -> [String] {
    var result = [String]()
    var num = ""
    
    for i in str {
        if let _ = Int(String(i)) {
            num.append(i)
            continue
        }
        result.append(num)
        result.append(String(i))
        num = ""
    }
    
    result.append(num)
    
    return result
}

func calc(_ sequence: [Int], _ operators: [String], _ formula: [String]) -> Int {

    var result = 0
    var formula = formula
    var stack = [String]()
    var isCalc = false
    
    for i in sequence {
        for element in formula {
            
            if element == operators[i] {
                isCalc = true
                continue
            } else {
                stack.append(element)
            }

            if isCalc == true {
                let second = Int(stack.removeLast())!
                let first = Int(stack.removeLast())!
                
                switch i {
                case 0:
                    stack.append(String(first + second))
                case 1:
                    stack.append(String(first - second))
                case 2:
                    stack.append(String(first * second))
                default:
                    break
                }
                isCalc = false
            }
        }
        if stack.count == 1 {
            result = abs(Int(stack[0])!)
        } else {
            formula = stack
            stack = []
        }
    }
    return result
}

func solution(_ expression:String) -> Int {
    
    var formula = strSplit(expression)
    let operatorSequence: [[Int]] = [
        [0, 1, 2], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0], [0, 2, 1]
    ]
    let operators = ["+", "-", "*"]
    var result = -1
    
    for i in 0..<operatorSequence.count {
        result = max(result, calc(operatorSequence[i], operators, formula))
    }
    
    return result
}
