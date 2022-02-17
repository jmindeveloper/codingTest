//
//  main.swift
//  백준_2468_안전영역_Swift
//
//  Created by J_Min on 2022/02/17.
//

import Foundation

var row = Int(readLine()!)!
var graph = [[Int]]()
var floodGraph = [[Int]]()

for _ in 0..<row {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    graph.append(input)
}

@discardableResult
func dfs(_ x: Int, _ y: Int, _ height: Int, _ graph: inout [[Int]]) -> Bool {
    if x <= -1 || x >= row || y <= -1 || y >= row {
        return false
    }
    
    if graph[x][y] <= height {
        return false
    } else {
        graph[x][y] = 0
        dfs(x - 1, y, height, &graph)
        dfs(x + 1, y, height, &graph)
        dfs(x, y - 1, height, &graph)
        dfs(x, y + 1, height, &graph)
        return true
    }
}

var answer = 0
// 비의 높이별로 안전구역 계산
// 비가 오지 않을경우를 고려해서 비의 높이는 0부터 시작
for height in 0..<100 {
    var safeArea = 0
    var floodGraph = graph
    for i in 0..<row {
        for j in 0..<row {
            if dfs(i, j, height, &floodGraph) == true {
                safeArea += 1
            }
        }
    }
    // 안전구역이 0인경우는 이미 모든 구역이 침수이므로
    // 더이상의 탐색이 의미없음
    if safeArea == 0 {
        break
    }
    answer = max(answer, safeArea)
}

print(answer)
