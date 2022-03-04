//
//  main.swift
//  백준_1105_팔_Swift
//
//  Created by J_Min on 2022/03/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map { $0 }
let l = Array(input[0])
let r = Array(input[1])
var result = 0

if l.count == r.count {
    for i in 0..<l.count {
        if l[i] == r[i] {
            if l[i] == "8" {
                result += 1
            }
        } else {
            break
        }
    }
}

print(result)
