//
//  main.swift
//  프로그래머스_문자열내p와y의개수_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func solution(_ s:String) -> Bool {
    let pCount = s.uppercased().filter { $0 == "P"}.count
    let yCount = s.uppercased().filter { $0 == "Y" }.count
    
    return pCount == yCount
}
