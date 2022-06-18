//
//  main.swift
//  프로그래머스_모음사전_Swift
//
//  Created by J_Min on 2022/06/18.
//

import Foundation

func solution(_ word:String) -> Int {
    var table: [[Int]] = [[1, 2, 3, 4, 5]]
    var num = 5
    var word = word
    
    for i in 1..<5 {
        var arr = [1]
        var num2 = num
        for j in 1..<5 {
            arr.append(num2 + table[i - 1][j])
            num2 += num
        }
        table.append(arr)
        num *= 5
    }
    
    while word.count != 5 {
        word += "X"
    }
    
    var result = 0
    
    for i in 0..<word.count {
        let w = word.removeLast()
        switch w {
            case "A":
                result += table[i][0]
            case "E":
                result += table[i][1]
            case "I":
                result += table[i][2]
            case "O":
                result += table[i][3]
            case "U":
                result += table[i][4]
            default:
            break
        }
    }
    
    return result
}
