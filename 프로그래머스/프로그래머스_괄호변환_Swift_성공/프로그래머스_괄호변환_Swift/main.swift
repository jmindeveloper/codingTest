//
//  main.swift
//  프로그래머스_괄호변환_Swift
//
//  Created by J_Min on 2022/02/24.
//

import Foundation

// 문자열 u와 v로 쪼개기(u 는 균형잡힌 문자열이여야 함)
func cutStr(_ str: String) -> (String, String) {
    var firstCount = 0
    var secondCount = 0
    var returnStr = ""
    
    for s in str {
        if s == "(" {
            firstCount += 1
            returnStr += "("
        } else if s == ")" {
            secondCount += 1
            returnStr += ")"
        }
        
        // ( 와 ) 의 개수가 같으면 균형잡힌 문자열이다
        if firstCount == secondCount {
            return (returnStr, String(str[str.index(str.startIndex, offsetBy: firstCount + secondCount)...]))
        }
    }
    return (returnStr, String(str[str.index(str.startIndex, offsetBy: firstCount + secondCount)...]))
}

// 문자열 u이 올바른 문자열인지 확인하기
func checkRightStr(_ str: String) -> Bool {
    
    var firstCount = 0
    var secondCount = 0
    
    for s in str {
        if s == "(" {
            firstCount += 1
        } else if s == ")" {
            secondCount += 1
        }
        // 올바른 문자열은 )의 개수가 ( 보다 많을 수 없다
        if firstCount < secondCount {
            return false
        } else {
            return true
        }
    }
    return true
}

// 문자열뒤집기
func reverseStr(_ str: String) -> String {
    var str = str
    str.removeFirst(); str.removeLast()
    var result = ""
    
    for s in str {
        if s == "(" {
            result += ")"
        } else if s == ")" {
            result += "("
        }
    }
    return result
}

func solution(_ p: String) -> String {
    
    var result = ""
    
    if p == "" {
        return ""
    }
    
    let cutedStr = cutStr(p)
    let u = cutedStr.0
    let v = cutedStr.1
    
    let isRightStr = checkRightStr(u)
    
    if isRightStr {
        // u가 올바른 문자열일때
        // result에 u 저장 v 재귀호출
        result += u
        result += solution(v)
    } else {
        // u가 올바른 문자열이 아닐때
        // result에 ( 붙이기
        result += "("
        // v 재귀호출
        result += solution(v)
        // result에 ) 붙이기
        result += ")"
        // result에 u 문자열 뒤집은거 붙이기
        result += reverseStr(u)
    }
    
    return result
}

print(solution("()))((()"))
print(solution(")("))
print(solution("(()())()"))
