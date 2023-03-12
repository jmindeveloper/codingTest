//
//  main.swift
//  프로그래머스_성격유형검사하기_Swift_성공
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var dic: [String: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    var result = ""
    
    func checkHighScoreType(_ first: String, second: String) {
        let firstScore = dic[first]!, secondScore = dic[second]!
        
        if firstScore < secondScore {
            result.append(second)
        } else if firstScore > secondScore {
            result.append(first)
        } else {
            result.append(first < second ? first : second)
        }
    }
    
    for i in 0..<choices.count {
        switch choices[i] {
        case 1...3:
            let type = String(survey[i].first!)
            
            switch choices[i] {
            case 1:
                dic[type]! += 3
            case 2:
                dic[type]! += 2
            case 3:
                dic[type]! += 1
            default:
                break
            }
        case 5...7:
            let type = String(survey[i].last!)
            
            switch choices[i] {
            case 5:
                dic[type]! += 1
            case 6:
                dic[type]! += 2
            case 7:
                dic[type]! += 3
            default:
                break
            }
        default: break
        }
    }
    
    
    
    for i in 0..<4 {
        switch i {
        case 0:
            checkHighScoreType("R", second: "T")
        case 1:
            checkHighScoreType("C", second: "F")
        case 2:
            checkHighScoreType("J", second: "M")
        case 3:
            checkHighScoreType("A", second: "N")
        default:
            break
        }
    }
    
    return result
}

