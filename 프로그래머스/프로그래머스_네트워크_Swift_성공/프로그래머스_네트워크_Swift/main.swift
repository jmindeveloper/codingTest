//
//  main.swift
//  프로그래머스_네트워크_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    
    var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n)
    var result = 0
    
    for i in 0..<n {
        for j in 0..<computers.count {
            let num = j + 1
            if computers[i][j] == 1 {
                graph[i].append(num)
            }
        }
    }
    print(graph)
    
    while true {
        var cnt = 0
        var isDone = false
        for i in graph {
            if i.isEmpty {
                cnt += 1
                print(cnt)
                continue
            }
            if isDone {
                break
            }
            for j in i {
                print(j)
                graph = DFS(start: j, graph: graph)
                print(graph)
                result += 1
                isDone = true
                break
            }
        }
        if cnt > graph.count - 1 {
            break
        }
    }
    
    return result
}

func DFS(start: Int, graph: [[Int]]) -> [[Int]] {
    var graph = graph
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        
        if !visited.contains(node) {
            visited.append(node)
            stack.append(contentsOf: graph[node - 1].sorted(by: >))
            graph[node - 1] = []
        }
    }
    return graph
}

print(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]]))

