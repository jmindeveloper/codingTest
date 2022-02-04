//
//  main.swift
//  이코테_구현_상하좌우_Swift
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

let row = Int(readLine()!)!
let plans = readLine()!.split(separator: " ").map { String($0) }

var x = 1, y = 1

let moveX = [0, 0, -1, 1]
let moveY = [-1, 1, 0, 0]
let moveType = ["U", "D", "L", "R"]
var nx = 0, ny = 0

for plan in plans {
    
    for i in 0..<moveType.count {
        
        if moveType[i] == plan {
            nx = x + moveX[i]
            ny = y + moveY[i]
        } else {
            continue
        }
        
        if nx < 1 || ny < 1 || nx > row || ny > row {
            continue
        } else {
            x = nx
            y = ny
        }
    }
}

print(y, x)
