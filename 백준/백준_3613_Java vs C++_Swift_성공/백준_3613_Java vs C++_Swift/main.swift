//
//  main.swift
//  백준_3613_Java vs C++_Swift
//
//  Created by J_Min on 2022/06/01.
//

import Foundation

let input = readLine()!

func snakeToCamel(_ str: String) {
    var beforeChar = ""
    
    if str == "_" {
        print("Error!")
        return
    }
    
    for i in str {
        if (beforeChar == "_" && i == "_") || i.isUppercase {
            print("Error!")
            return
        }
        beforeChar = String(i)
    }
    
    var removeUnderBarStr = str.split(separator: "_").map { String($0) }
    var camelStr = removeUnderBarStr[0]
    if str.first == "_" || str.last == "_" {
        print("Error!")
        return
    }
    
    for i in 1..<removeUnderBarStr.count {
        let firstChar = removeUnderBarStr[i].first!.uppercased()
        removeUnderBarStr[i].removeFirst()
        let restChar = removeUnderBarStr[i]
        camelStr = camelStr + firstChar + restChar
    }
    print(camelStr)
}

func camelToSnake(_ str: String) {
    var str = str
    var snakeCase = ""
    
    if str.first!.isUppercase {
        print("Error!")
        return
    }
    
    while !str.isEmpty {
        let char = str.removeFirst()
        if char.isLowercase {
            snakeCase.append(contentsOf: String(char))
        } else {
            snakeCase += "_" + String(char.lowercased())
        }
    }
    print(snakeCase)
}

if input.contains("_") {
    snakeToCamel(input)
} else {
    camelToSnake(input)
}
