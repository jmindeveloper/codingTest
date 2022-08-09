//
//  main.swift
//  백준_1406_에디터_Swift
//
//  Created by J_Min on 2022/08/09.
//

import Foundation

/*
var str = Array(readLine()!).map { String($0) }
let m = Int(readLine()!)!
var cursor = str.count

for _ in 0..<m {
    let command = readLine()!.split(separator: " ").map { String($0) }
    
    switch command[0] {
    case "L":
        if cursor > 0 {
            cursor -= 1
        }
    case "D":
        if cursor < str.count {
            cursor += 1
        }
    case "B":
        if cursor > 0 {
            str.remove(at: cursor - 1)
            cursor -= 1
        }
    case "P":
        str.insert(command[1], at: cursor)
        cursor += 1
    default: break
    }
}

let result = str.reduce("") {
    $0 + $1
}

print(result)
*/

var left = Array(readLine()!)
var right = [Character]()

for _ in 0..<Int(readLine()!)! {
    let command = readLine()!
    
    switch command.first! {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B":
        if !left.isEmpty {
            left.removeLast()
        }
    case "P":
        left.append(command.last!)
    default: break
    }
}

print(String(left + right.reversed()))
