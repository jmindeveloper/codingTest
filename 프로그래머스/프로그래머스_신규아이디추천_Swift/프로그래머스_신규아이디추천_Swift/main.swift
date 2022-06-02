//
//  main.swift
//  프로그래머스_신규아이디추천_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

import Foundation

func solution(_ new_id:String) -> String {
    // 1단계
    let myID  = new_id.lowercased()
    
    // 2단계
    var newID = ""
    for i in myID {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            newID += String(i)
        }
    }
    
    // 3단계
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    if !newID.isEmpty {
        if newID.first! == "." {
            newID.removeFirst()
        }
    }
    
    if !newID.isEmpty {
        if newID.last! == "." {
            newID.removeLast()
        }
    }
    
    // 5단계
    if newID.isEmpty {
        newID = "a"
    }
    
    // 6단계
    if newID.count > 15 {
        let startIndex: String.Index = newID.index(newID.startIndex, offsetBy: 0)
        let endIndex: String.Index = newID.index(newID.startIndex, offsetBy: 14)
        newID = String(newID[startIndex...endIndex])
    }
    if newID.last! == "." {
        newID.removeLast()
    }
    
    // 7단계
    if newID.count <= 2 {
        while newID.count != 3 {
            newID = newID + String(newID.last!)
        }
    }
    
    
    return newID
}
