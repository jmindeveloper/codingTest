//
//  main.swift
//  이코테_구현_왕실의나이트_Swift
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

// 현재위치
let input = readLine()!
let row = 1
let column = Int(input.first!.asciiValue!) - Int(Character("a").asciiValue!) + 1

var result = 0
// 나이트의 이동가능한 방향
let steps = [(2, 1), (2, -1), (-2, 1), (-2, -1), (1, 2), (1, -2), (-1, 2), (-1, -2)]

for step in steps {
    // 이동가능한 위치 확인
    let nextRow = row + step.0
    let nextColumn = column + step.1
    // 해당위치 이동 가능시 result += 1
    if nextRow > 0 && nextRow < 9 && nextColumn > 0 && nextColumn < 9 {
        result += 1
    }
}

print(result)
