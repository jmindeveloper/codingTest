//
//  main.swift
//  백준_1261_알고스팟_Swift
//
//  Created by J_Min on 2022/02/22.
//

import Foundation

let matrix = readLine()!.split(separator: " ").map { Int($0)! }
var row = matrix[1]
var column = matrix[0]
var graph = [[Int]]()
var brokenWallsCount = [Int]()
var visited = Array(repeating: Array(repeating: Int.max, count: column + 1), count: row + 1)

for _ in 0..<row {
    
    graph.append(readLine()!.map { Int(String($0))! })
}

func bfs() {
    
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]
    
    var queue = [(0, 0)]
    visited[0][0] = 0
    
    while !queue.isEmpty {
        
        let current = queue.removeFirst()
        let x = current.0
        let y = current.1
        
        for i in 0..<4 {
            let nx = dx[i] + x
            let ny = dy[i] + y
            
            if nx >= 0 && nx < row && ny >= 0 && ny < column {
                if graph[nx][ny] == 1 {
                    if visited[nx][ny] > visited[x][y] + 1 {
                        visited[nx][ny] = visited[x][y] + 1
                        queue.append((nx, ny))
                    }
                } else if graph[nx][ny] == 0 {
                    if visited[nx][ny] > visited[x][y] {
                        visited[nx][ny] = visited[x][y]
                        queue.append((nx, ny))
                    }
                }
            }
        }
    }
}

bfs()
print(visited[row - 1][column - 1])
