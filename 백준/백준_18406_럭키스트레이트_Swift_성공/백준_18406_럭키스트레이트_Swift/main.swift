//
//  main.swift
//  백준_18406_럭키스트레이트_Swift
//
//  Created by J_Min on 2022/01/29.
//

import Foundation

let input = readLine()!
var array = Array(input)
var leftSum = 0
var rightSum = 0

for i in 0..<array.count / 2 {
    leftSum += Int(String(array[i]))!
}

for i in array.count / 2..<array.count {
    rightSum += Int(String(array[i]))!
}

if leftSum == rightSum {
    print("LUCKY")
} else {
    print("READY")
}
