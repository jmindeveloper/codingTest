//
//  main.swift
//  백준_1439_뒤집기_Swift
//
//  Created by J_Min on 2022/01/23.
//
// 13분

import Foundation

let input = Array(readLine()!)
var zeroCount = 0
var oneCount = 0
var isZero = false

if input.first! == "0" {
    isZero = true
}

for i in 1..<input.count {
    if isZero {
        if input[i] == "1" {
            isZero = false
            zeroCount += 1
        }
    } else {
        if input[i] == "0" {
            isZero = true
            oneCount += 1
        }
    }
    
    if i + 1 == input.count {
        if input[i] == "1" {
            oneCount += 1
        } else {
            zeroCount += 1
        }
    }
    
}

print(min(zeroCount, oneCount))
