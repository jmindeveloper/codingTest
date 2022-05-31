//
//  main.swift
//  프로그래머스_가운데글자가져오기_Swift
//
//  Created by J_Min on 2022/05/22.
//

import Foundation

func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0{
        return String(Array(s)[s.count/2 - 1...s.count/2])
    }
    return String(Array(s)[s.count/2])
}

print(solution("qwer"))
