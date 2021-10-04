//
//  main.swift
//  백준_7785_Swift
//
//  Created by J_Min on 2021/08/21.
//

import Foundation

import Foundation

let n = Int(readLine()!)!
var members: [String] = []

Array(0..<n).forEach { _ in
    let input = readLine()!.components(separatedBy: " ")
    
    if input[1] == "enter" {
        members.append((input[0]))
    } else {
        members.remove(at: members.firstIndex(of: input[0])!)
    }
}

let sortedMember = members.sorted(by: >).joined(separator: "\n")

print(sortedMember)

// 시간초과
