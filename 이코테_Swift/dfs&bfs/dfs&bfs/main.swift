//
//  main.swift
//  dfs&bfs
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

// dfs
func dfs(graph: [[Int]], v: Int, visited: inout [Bool]) {
    // 현재노드 방문처리
    visited[v] = true
    print(v)
    // 현재 노드와 연결된 다른 노드를 재귀적으로 방문
    for i in graph[v] {
        if !visited[i] {
            dfs(graph: graph, v: i, visited: &visited)
        }
    }
}

let graph = [[], [2, 3, 8], [1, 7], [1, 4, 5], [3, 5], [3, 4], [7], [2, 6, 8], [1, 7]]
var visited = Array(repeating: false, count: 9)

print("dfs")
dfs(graph: graph, v: 1, visited: &visited)

// bfs
var queue = [Int]()

func bfs(graph: [[Int]], start: Int, visited: inout [Bool]) {
    
    queue = [start]
    // 현재노드 방문처리
    visited[start] = true
    // 큐가 빌때까지 반복
    while !queue.isEmpty {
        let v = queue.removeFirst()
        print(v)
        // 해당 원소와 연결된, 아직 방문하지 않은 원소들을 큐에 삽입
        for i in graph[v] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

let graph2 = [[], [2, 3, 8], [1, 7], [1, 4, 5], [3, 5], [3, 4], [7], [2, 6, 8], [1, 7]]
var visited2 = Array(repeating: false, count: 9)

print("bfs")
bfs(graph: graph2, start: 1, visited: &visited2)
