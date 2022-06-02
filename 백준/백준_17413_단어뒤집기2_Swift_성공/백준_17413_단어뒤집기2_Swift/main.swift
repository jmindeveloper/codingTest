//
//  main.swift
//  백준_17413_단어뒤집기2_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

var input = readLine()!
var stringStack = ""
var result = ""

for _ in 0..<input.count {
    let char = input.removeFirst()
//    print(stringStack)
    
    if char == " " || char == "<" {
        if !stringStack.contains("<") {
            result.append(String(stringStack.reversed()))
            stringStack.removeAll()
        }
        
        if char == " ", !stringStack.contains("<") {
            result += " "
        } else {
            stringStack.append(char)
        }
    } else if char == ">" {
        result.append(String(stringStack))
        stringStack.removeAll()
        result.append(">")
    } else {
        stringStack.append(char)
    }
}

if !stringStack.isEmpty {
    result.append(String(stringStack.reversed()))
}

print(result)

