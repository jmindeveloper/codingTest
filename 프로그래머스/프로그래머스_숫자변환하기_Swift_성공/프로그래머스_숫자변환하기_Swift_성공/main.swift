//
//  main.swift
//  프로그래머스_숫자변환하기_Swift_성공
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    if x == y { return 0 }
    var visited = Set<Int>()
    var queue: [(Int, Int)] = [(x + n, 1), (x * 2, 1), (x * 3, 1)]
    var index = 0
    
    while !queue.isEmpty {
        if index >= queue.count {
            break
        }
        let e = queue[index]
        index += 1
        if e.0 == y {
            return e.1
        }
        if e.0 > y { continue }
        if visited.contains(e.0) { continue } else { visited.insert(e.0) }
        queue.append((e.0 + n, e.1 + 1))
        queue.append((e.0 * 2, e.1 + 1))
        queue.append((e.0 * 3, e.1 + 1))
    }
    
    return -1
}
