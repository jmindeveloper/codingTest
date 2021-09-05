//
//  main.swift
//  백준_1427_Swift
//
//  Created by J_Min on 2021/09/05.
//

import Foundation

let num = String(readLine()!)

var string = ""

let numInt = Int(exactly: num.count)!




for i in stride(from: numInt, to: 0, by: -1) {
    string.append(String(i))
}

print(string)


