//
//  main.swift
//  이코테_구현_상하좌우_Swift
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

//let row = Int(readLine()!)!
//let plans = readLine()!.split(separator: " ").map { String($0) }
//
//var x = 1, y = 1
//
//let moveX = [0, 0, -1, 1]
//let moveY = [-1, 1, 0, 0]
//let moveType = ["U", "D", "L", "R"]
//var nx = 0, ny = 0
//
//for plan in plans {
//
//    for i in 0..<moveType.count {
//
//        if moveType[i] == plan {
//            nx = x + moveX[i]
//            ny = y + moveY[i]
//        } else {
//            continue
//        }
//
//        if nx < 1 || ny < 1 || nx > row || ny > row {
//            continue
//        } else {
//            x = nx
//            y = ny
//        }
//    }
//}
//
//print(y, x)


let n = Int(readLine()!)!
let plan = readLine()!.split(separator: " ").map { String($0) }

var x = 1, y = 1

func move(_ direction: String) {
    switch direction {
    case "L":
        y -= 1
        if y < 1 {
            y = 1
        }
    case "R":
        y += 1
        if y > n {
            y = n
        }
    case "U":
        x -= 1
        if x < 1 {
            x = 1
        }
    case "D":
        x += 1
        if x > n {
            x = n
        }
    default:
        break
        
    }
}

for i in plan {
    move(i)
}

print(x, y, separator: " ")
