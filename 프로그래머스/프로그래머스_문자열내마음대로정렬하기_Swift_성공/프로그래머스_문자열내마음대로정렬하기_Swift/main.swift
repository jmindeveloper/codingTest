//
//  main.swift
//  프로그래머스_문자열내마음대로정렬하기_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    return strings.sorted {
        let first = $0[$0.index($0.startIndex, offsetBy: n)]
        let second = $1[$1.index($1.startIndex, offsetBy: n)]
        
        return first != second ?
        first < second : $0 < $1
    }
}

print(solution(["abce", "abcd", "cdx"], 2))

