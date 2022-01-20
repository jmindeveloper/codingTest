//
//  main.swift
//  백준_2504_Swift
//
//  Created by J_Min on 2022/01/19.
//

import Foundation

let input = readLine()!

let inputArr = Array(input)

var stack = [Character]()
var tamp = 1
var result = 0
var isError = false


for i in 0..<inputArr.count {
    if inputArr[i] == "(" {
        stack.append(inputArr[i])
        tamp *= 2
    } else if  inputArr[i] == "[" {
        stack.append(inputArr[i])
        tamp *= 3
    } else if inputArr[i] == ")" {
        if stack.last != "(" || stack.isEmpty {
            isError = true
            break
        }
        if inputArr[i - 1] == "(" {
            result += tamp
        }
            tamp /= 2
            stack.removeLast()
    } else if inputArr[i] == "]" {
        if stack.last != "[" || stack.isEmpty {
            isError = true
            break
        }
        if inputArr[i - 1] == "[" {
            result += tamp
        }
            tamp /= 3
            stack.removeLast()
    }
}
if isError || !stack.isEmpty {
    print("0")
} else {
    print(result)
}
