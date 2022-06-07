//
//  main.swift
//  프로그래머스_압축_Swift
//
//  Created by J_Min on 2022/06/07.
//

import Foundation

func solution(_ msg:String) -> [Int] {
    var msg = msg
    var LZW = ["A": 1, "B": 2, "C": 3, "D": 4, "E": 5, "F": 6, "G": 7, "H": 8, "I": 9, "J": 10, "K": 11, "L": 12, "M": 13, "N": 14, "O": 15, "P": 16, "Q": 17, "R": 18, "S": 19, "T": 20, "U": 21, "V": 22, "W": 23, "X": 24, "Y": 25, "Z": 26]
    var LZWIndex = 27
    var result = [Int]()
    
    while !msg.isEmpty {
        var str = ""
        while !msg.isEmpty {
            str += String(msg.removeFirst())
            if LZW[str] == nil {
                if str.count == 1 {
                    result.append(LZW[str]!)
                } else {
                    msg = String(str.removeLast()) + msg
                    result.append(LZW[str]!)
                }
                let word = str + String(msg.first!)
                LZW[word] = LZWIndex
                LZWIndex += 1
                break
            } else {
                if msg.isEmpty {
                    result.append(LZW[str]!)
                }
                continue
            }
        }
    }
    return result
}

print(solution("TOBEORNOTTOBEORTOBEORNOT"))
