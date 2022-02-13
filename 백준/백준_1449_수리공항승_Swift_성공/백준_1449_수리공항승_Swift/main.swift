//
//  main.swift
//  백준_1449_수리공항승_Swift
//
//  Created by J_Min on 2022/02/13.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let l = input[1]
var loca = readLine()!.split(separator: " ").map { Int($0)! }

loca.sort()

var answer = 0
var current = 0

for loca in loca {
    if current < loca {
        // current에서 current + l - 1 까지는 테이프 하나로 수리가능
        current = loca + l - 1
        answer += 1
    }
}
print(answer)
