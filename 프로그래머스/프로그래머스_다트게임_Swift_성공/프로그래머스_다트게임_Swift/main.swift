//
//  main.swift
//  프로그래머스_다트게임_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func solution(_ dartResult: String) -> Int {
    
    let dartResultArray = Array(dartResult)
    var ten = false
    var score = 0
    var scores = [Int]()
    print(dartResultArray)
    
    for i in 0..<dartResultArray.count {
        if let value = Int(String(dartResultArray[i])) {
            if dartResultArray[i + 1] == "0" && dartResultArray[i] == "1" {
                score = 10
                print(score)
                ten = true
            }
            if ten == true {
                continue
            }
            score = value
        } else {
            ten = false
            switch dartResultArray[i] {
            case "S":
                scores.append(score)
            case "D":
                score = score * score
                scores.append(score)
            case "T":
                score = score * score * score
                scores.append(score)
            case "*":
                let x1 = scores[scores.count - 1]
                if scores.count > 1 {
                    let x2 = scores[scores.count - 2]
                    scores[scores.count - 2] = x2 * 2
                }
                scores[scores.count - 1] = x1 * 2
            case "#":
                let x1 = scores[scores.count - 1]
                scores[scores.count - 1] = x1 * -1
            default:
                break
            }
        }
        print("scores --> \(scores)")
    }
    
    return scores.reduce(0, { $0 + $1 })
}


print(solution("1S*2T*3S"))
