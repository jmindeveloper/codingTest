//
//  main.swift
//  이코테_그리디_1이될때까지_Swift
//
//  Created by J_Min on 2022/03/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var currentNum = input[0]
let k = input[1]
var answer = 0

while currentNum > 1 {
    if currentNum % k == 0 && currentNum / k > 0 {
        currentNum = currentNum / k
        answer += 1
        continue
    }
    
    currentNum -= 1
    answer += 1
}

print(answer)
