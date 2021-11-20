//
//  main.swift
//  백준_1541_Swift
//
//  Created by J_Min on 2021/11/20.
//

import Foundation

let input = readLine()!.split(separator: "-")
var nums = [[String]]()
var first = true
var result = 0
var plus = 0

for i in input {
    let num = i.split(separator: "+").map { Int($0)! }
    for j in num {
        plus += j
    }
    if first == true {
        result += plus
        first = false
    } else {
        result -= plus
    }
    plus = 0
}
print(result)
