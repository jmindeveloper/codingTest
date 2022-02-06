//
//  main.swift
//  백준_18405_유기농배추_Swift
//
//  Created by J_Min on 2022/02/06.
//

import Foundation

let testCase = Int(readLine()!)!

// Graph 및 배추 위치 구하기
func getGraph() -> ([[Int]], [(Int, Int)]) {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let row = input[1]
    let column = input[0]
    let cabbageCount = input[2]
    var cabbageLocaition = [(Int, Int)]()
    
    var graph = Array(repeating: Array(repeating: 0, count: row), count: column)
    
    // 배추위치 저장
    for _ in 0..<cabbageCount {
        let cabbageLoca = readLine()!.split(separator: " ").map { Int($0)! }
        graph[cabbageLoca[0]][cabbageLoca[1]] = 1
        cabbageLocaition.append((cabbageLoca[0], cabbageLoca[1]))
    }
    
    return (graph, cabbageLocaition)
}

@discardableResult
func dfs(x: Int, y: Int, graph: inout [[Int]]) -> Bool {
    // 범위지나갔으면 종료
    if x < 0 || x >= graph.count || y < 0 || y >= graph[0].count {
        return false
    }
    // 배추가 없거나 이미 확인한위치면 종료
    if graph[x][y] != 1 {
        return false
    }
    
    // 방문확인
    graph[x][y] = 0
    // 상하좌우 방향으로 재귀호출
    dfs(x: x + 1, y: y, graph: &graph)
    dfs(x: x - 1, y: y, graph: &graph)
    dfs(x: x, y: y + 1, graph: &graph)
    dfs(x: x, y: y - 1, graph: &graph)
    return true
}

for _ in 0..<testCase {
    
    let getGraph = getGraph()
    var graph = getGraph.0
    let cabbageLocation = getGraph.1
    var count = 0
    
    for i in cabbageLocation {
        if dfs(x: i.0, y: i.1, graph: &graph) == true { count += 1 }
    }
    
    print(count)
}

