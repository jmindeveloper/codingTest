//
//  main.swift
//  백준_5622_Swift
//
//  Created by J_Min on 2021/08/21.
//

// https://www.acmicpc.net/problem/5622

import Foundation

let input = readLine()!
var count: Int = 0


for i in input {
    switch i {
    case "A", "B", "C":
        count += 3
    case "D", "E", "F":
        count += 4
    case "G", "H", "I":
        count += 5
    case "J", "K", "L":
        count += 6
    case "M", "N", "O":
        count += 7
      case "P", "Q", "R", "S":
        count += 8
      case "T", "U", "V":
        count += 9
      case "W", "X", "Y", "Z":
        count += 10
    default:
        break
    }
}

print(count)

// 성공
