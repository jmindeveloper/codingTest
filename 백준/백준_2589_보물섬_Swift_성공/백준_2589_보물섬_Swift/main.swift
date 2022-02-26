//
//  main.swift
//  백준_2589_보물섬_Swift
//
//  Created by J_Min on 2022/02/26.
//

import Foundation

let matrix = readLine()!.split(separator: " ").map { Int($0)! }
let row = matrix[0]
let column = matrix[1]
var graph = [[String]]()

for _ in 0..<row {
    let input = Array(readLine()!)
    graph.append(input.map { String($0) })
}

func bfs(_ x: Int, _ y: Int) -> Int {
    var queue = [(x, y, 0)]
    var visited = Array(repeating: Array(repeating: false, count: column), count: row)
    visited[x][y] = true
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]
    var temp = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let currentX = current.0
        let currentY = current.1
        let currentIndex = current.2
        
        for i in 0..<4 {
            let nx = currentX + dx[i]
            let ny = currentY + dy[i]
            
            if nx >= 0 && nx < row && ny >= 0 && ny < column {
                if visited[nx][ny] == false && graph[nx][ny] == "L" {
                    queue.append((nx, ny, currentIndex + 1))
                    visited[nx][ny] = true
                    temp = max(temp, currentIndex + 1)
                }
            }
        }
    }
    return temp
}

var result = 0

for x in 0..<row {
    for y in 0..<column {
        if graph[x][y] == "L" {
            let temp = bfs(x, y)
            result = max(result, temp)
        }
    }
}

print(result)
