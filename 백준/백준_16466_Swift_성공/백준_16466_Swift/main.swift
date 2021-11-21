//
//  main.swift
//  백준_16466_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

let input = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").compactMap { Int(String($0))}.sorted(by: <)
var i = 0
var ticket = 1
var result = 0

while true {
    
    if arr[i] == arr.last {
        result = arr.last! + 1
        break
    }
    
    if arr[i] != ticket {
        result = ticket
        break
    } else {
        ticket += 1
        i += 1
    }
}

print(result)
