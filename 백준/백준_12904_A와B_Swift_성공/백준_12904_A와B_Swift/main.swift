//
//  main.swift
//  백준_12904_A와B_Swift
//
//  Created by J_Min on 2022/05/05.
//

import Foundation

let s = Array(readLine()!)
var t = Array(readLine()!)

while s.count < t.count {
    if t.last! == "B" {
        t.removeLast()
        t.reverse()
    } else {
        t.removeLast()
    }
}

if s == t {
    print(1)
} else {
    print(0)
}
