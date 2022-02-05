//
//  main.swift
//  BFS_음료수얼려먹기_Swift
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

@discardableResult
func dfs(x: Int, y: Int) -> Bool {
    // 주어진 범위를 벗어나면 종료
    if x <= -1 || x >= input[0] || y <= -1 || y >= input[1] {
        return false
    }
    // 현재노드를 아직 방문하지 않았다면
    if graph[x][y] == 0 {
        // 해당 노드 방문처리
        graph[x][y] = 1
        // 상하좌우 위치도 재귀적으로 호출
        dfs(x: x - 1, y: y)
        dfs(x: x + 1, y: y)
        dfs(x: x, y: y - 1)
        dfs(x: x, y: y + 1)
        return true
    }
    return false
}

var result = 0
for i in 0..<input[0] {
    for j in 0..<input[1] {
        if dfs(x: i, y: j) == true {
            result += 1
        }
    }
}

print(result)
