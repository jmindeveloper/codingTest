//
//  main.swift
//  백준_2210_숫자판점프_Swift
//
//  Created by J_Min on 2022/02/19.
//

import Foundation

var graph = [[String]]()

var set = Set<String>()

func dfs(_ x: Int, _ y: Int, _ now: String) {
    
    let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
    
    if now.count == 6 {
        set.insert(now)
        return
    }

    for i in 0..<4 {
        let nx = x + dx[i], ny = y + dy[i]
        if nx >= 0 && ny >= 0 && nx < 5 && ny < 5 {
            dfs(nx, ny, now + graph[x][y])
        }
    }
}

for _ in 0..<5 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    graph.append(input)
}

for i in 0..<5 {
    for j in 0..<5 {
        dfs(i, j, "")
    }
}

print(set.count)



