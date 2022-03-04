//
//  main.swift
//  백준_16953_A->B_Swift
//
//  Created by J_Min on 2022/03/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
var b = input[1]
var result = 1

while true {
    
    if b < a {
        print("-1")
        break
    } else if b == a {
        print(result)
        break
    }
    
    var strB = String(b)
    if b % 2 != 0 && strB.last != "1" {
        print("-1")
        break
    } else if strB.last == "1" {
        strB.removeLast()
        b = Int(strB)!
        result += 1
    } else if b % 2 == 0 {
        b = b / 2
        result += 1
    }
}
