//
//  main.swift
//  프로그래머스_N-Queen_Swift
//
//  Created by J_Min on 2022/08/13.
//

import Foundation

import Foundation

func containsTuple(_ array: [(Int, Int)], _ tuple:(Int,Int)) -> Bool {
    let (x, y) = tuple
    for (i, j) in array {
        if i == x && j == y {
            return true
        }
    }
    return false
}

func solution(_ n:Int) -> Int {
    var result = 0
    let moveY = [1, -1]
    var visited = Array(repeating: false, count: 12)
    
    func dfs(_ x: Int, _ y: Int, _ locaArr: [(Int, Int)]) {
        var locaArr = locaArr
        
        if containsTuple(locaArr, (x, y)) {
            return
        }
        
        if x == n - 1 {
            result += 1
            return
        }
        
        for i in 0..<2 {
            var xx = x
            var yy = y
            for _ in x..<n {
                xx += 1
                yy += moveY[i]
                
                if yy < 0 || yy >= n || xx >= n {
                    break
                } else {
                    locaArr.append((xx, yy))
                }
            }
        }
        
        for i in 0..<n {
            if visited[i] == true {
                continue
            }
            if i == y || i == y + 1 || i == y - 1 {
                continue
            }
            visited[i] = true
            dfs(x + 1, i, locaArr)
            visited[i] = false
        }
    }
    
    for i in 0..<n {
        visited = Array(repeating: false, count: 12)
        visited[i] = true
        dfs(0, i, [])
    }
    
    return result
}

public func measureTime(_ closure: () -> ()) -> TimeInterval {
    let startDate = Date()
    closure()
    return Date().timeIntervalSince(startDate)
}

//print(solution(12))


