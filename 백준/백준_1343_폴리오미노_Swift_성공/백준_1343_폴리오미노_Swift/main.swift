//
//  main.swift
//  백준_1343_폴리오미노_Swift
//
//  Created by J_Min on 2022/02/22.
//

import Foundation

var board = Array(readLine()!)

var count = 0
var result = ""

if board != ["X"] {
    
    for (index, str) in board.enumerated() {
        
        if str == "X" {
            count += 1
            if count == 4 {
                result += "AAAA"
                count = 0
            } else if count == 2 {
                if index != board.count - 1 && board[index + 1] == "X" {
                    continue
                }
                result += "BB"
                count = 0
            }
        } else if str == "." {
            if count == 0 {
                result += "."
            } else {
                result = "-1"
                break
            }
        } else {
            result = "-1"
            break
        }
        
        if index == board.count - 1 && (count == 1 || count == 3) {
            result = "-1"
        }
    }
} else { result = "-1" }



print(result)
