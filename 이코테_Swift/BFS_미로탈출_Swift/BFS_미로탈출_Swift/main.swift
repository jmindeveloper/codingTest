//
//  main.swift
//  BFS_미로탈출_Swift
//
//  Created by J_Min on 2022/02/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var graph = [[Int]]()

for _ in 0..<input[0] {
    let row = Array(readLine()!)
    graph.append(row.map { Int(String($0))!})
}

var dx = [-1, 1, 0, 0]
var dy = [0, 0, -1, 1]

func bfs(x: inout Int, y: inout Int) -> Int {
    
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let popData = queue.removeFirst()
        x = popData.0
        y = popData.1
        
        // 현재 위치에서 4방향으로 위치확인
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            // 그래프 벗어날시 continue
            if nx < 0 || ny < 0 || nx >= input[0] || ny >= input[1] {
                continue
            }
            // 괴물잇을경우 무시
            if graph[nx][ny] == 0 {
                continue
            }
            // 해당 노드 첫 방문시 최단거리 기록
            if graph[nx][ny] == 1 {
                graph[nx][ny] = graph[x][y] + 1
                queue.append((nx, ny))
            }
        }
        
    }
    print(graph)
    return graph[input[0] - 1][input[1] - 1]
}
var x = 0
var y = 0

print(bfs(x: &x, y: &y))
