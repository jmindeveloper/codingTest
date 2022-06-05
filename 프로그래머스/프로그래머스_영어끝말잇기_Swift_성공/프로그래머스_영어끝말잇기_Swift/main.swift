//
//  main.swift
//  프로그래머스_영어끝말잇기_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var totalWord: [String] = [String(words.first!.first!)]
    var dic = [Int: [String]]()
    var turn = 1
    var isFail = false
    
    for word in words {
        if totalWord.contains(String(word)) || totalWord.last!.last! != word.first! || word.count == 1 {
            isFail = true
            break
        } else {
            totalWord.append(word)
        }
        
        if dic[turn] == nil {
            dic[turn] = [word]
        } else {
            dic[turn]!.append(word)
        }
        
        if turn == n {
            turn = 1
        } else {
            turn += 1
        }
    }
    
    if isFail {
        if dic[turn] == nil {
            return [turn, 1]
        } else {
            return [turn, dic[turn]!.count + 1]
        }
    } else {
        return [0, 0]
    }
}
