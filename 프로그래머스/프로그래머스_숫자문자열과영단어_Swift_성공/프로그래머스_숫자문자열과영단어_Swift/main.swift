//
//  main.swift
//  프로그래머스_숫자문자열과영단어_Swift
//
//  Created by J_Min on 2022/02/24.
//

import Foundation

func solution(_ s:String) -> Int {
    
    var result = ""
    var str = ""
    
    for i in s {
        guard let _ = Int(String(i)) else {
            str += String(i)
            switch str {
            case "one":
                result += "1"
                str = ""
            case "two":
                result += "2"
                str = ""
            case "three":
                result += "3"
                str = ""
            case "four":
                result += "4"
                str = ""
            case "five":
                result += "5"
                str = ""
            case "six":
                result += "6"
                str = ""
            case "seven":
                result += "7"
                str = ""
            case "eight":
                result += "8"
                str = ""
            case "nine":
                result += "9"
                str = ""
            case "zero":
                result += "0"
                str = ""
            default:
                break
            }
            continue
        }
        result += String(i)
    }
    
    
    return Int(result)!
}

print(solution("one4seveneight"))
