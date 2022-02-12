//
//  main.swift
//  프로그래머스_가장먼노드_Swift
//
//  Created by J_Min on 2022/02/12.
//

import Foundation

func changeGraph(_ edge: [[Int]], _ count: Int) -> [[Int]] {
    var graph: [[Int]] = Array(repeating: [], count: count + 1)
    
    for edge in edge {
        graph[edge[0]].append(edge[1])
        graph[edge[1]].append(edge[0])
    }
    return graph
}

func bfs(_ graph: [[Int]], _ start: Int, visited: inout [Bool]) -> [(Int, Int)] {
    
    var queue = [(start, 1)]
    visited[start] = true
    var arr: [(Int, Int)] = []
    
    while !queue.isEmpty {
        
        let v = queue.removeFirst()
        arr.append(v)
        
        for i in graph[v.0] {
            if !visited[i] {
                queue.append((i, v.1 + 1))
                visited[i] = true
            }
        }
        
    }
    return arr
}

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    
    let graph = changeGraph(edge, n)
    var visited = Array(repeating: false, count: graph.count + 1)
    
    let afterBfsGraph = bfs(graph, 1, visited: &visited)
    
    let maxValue = afterBfsGraph.map { $0.1 }.max()!
    let answer = afterBfsGraph.filter { $0.1 == maxValue }.count
    
    return answer
}

print(solution(4, [[1,4],[4,3],[1,2]]))
