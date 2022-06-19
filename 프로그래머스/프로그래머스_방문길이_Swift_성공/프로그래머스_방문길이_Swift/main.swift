//
//  main.swift
//  프로그래머스_방문길이_Swift
//
//  Created by J_Min on 2022/06/19.
//

import Foundation

struct MovePath: Equatable {
    
    let movePath: String
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.movePath == rhs.movePath
    }
}

func solution(_ dirs: String) -> Int {
    
    var movePathArr = [MovePath]()
    var currentLocation = (x: 5, y: 5)
    var nextLocation = (x: 0, y: 0)
    var result = 0
    
    for i in dirs {
        switch i {
        case "U":
            if currentLocation.x == 0 {
                continue
            } else {
                nextLocation = (currentLocation.x - 1, currentLocation.y)
            }
        case "L":
            if currentLocation.y == 0 {
                continue
            } else {
                nextLocation = (currentLocation.x, currentLocation.y - 1)
            }
        case "R":
            if currentLocation.y == 10 {
                continue
            } else {
                nextLocation = (currentLocation.x, currentLocation.y + 1)
            }
        case "D":
            if currentLocation.x == 10 {
                continue
            } else {
                nextLocation = (currentLocation.x + 1, currentLocation.y)
            }
            default: break
        }
        let movePathStr = "\(currentLocation.x)\(currentLocation.y)\(nextLocation.x)\(nextLocation.y)"
        let movePathReverseStr = "\(nextLocation.x)\(nextLocation.y)\(currentLocation.x)\(currentLocation.y)"
        let movePath = MovePath(movePath: movePathStr)
        let movePathReverse = MovePath(movePath: movePathReverseStr)
        
        if !movePathArr.contains(movePath), !movePathArr.contains(movePathReverse) {
            result += 1
            movePathArr.append(movePath)
            movePathArr.append(movePathReverse)
        }
        
        currentLocation = nextLocation
    }
    
    return result
}

print(solution("ULURRDLLUULURRDLLUULURRDLLUULURRDLLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUUUULURRDLLUULURRDLLUULUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLRLUURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLURDLLUULURRDLLUUULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLURRDLLUULURRDLLULDURULURRDLDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUUUULURRDLLUULURRDLLUULURURDLURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDRULULLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLULUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDURULURRDLLUULURRDLLUULURRDLLUULURRDLLUULURRDLLULDUR"))
