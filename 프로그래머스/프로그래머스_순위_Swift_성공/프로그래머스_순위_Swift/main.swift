//
//  main.swift
//  프로그래머스_순위_Swift
//
//  Created by J_Min on 2022/02/14.
//

import Foundation

func dfs(_ graph: [[Int]], _ current: Int, _ visited: inout [Bool], _ dic: inout [Int: [Int]], _ root: Int) {
    visited[current] = true
    
    if current != root {
        dic[root]![1] += 1
        dic[current]![0] += 1
    }
    
    for i in graph[current] {
        if !visited[i] {
            dfs(graph, i, &visited, &dic, root)
        }
    }
}

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    
    var graph = Array(repeating: [Int](), count: n + 1)
    var visited = Array(repeating: false, count: n + 1)
    var dic = [Int: [Int]]()
    
    for i in 1...n {
        dic[i] = [0, 0]
    }
    
    for i in results {
        graph[i[0]].append(i[1])
    }
    
    for i in 1..<graph.count {
        if !graph[i].isEmpty {
            dfs(graph, i, &visited, &dic, i)
            visited = Array(repeating: false, count: n + 1)
        }
    }
    
    var answer = 0
    for i in dic.values {
        if i[0] + i[1] == n - 1 {
            answer += 1
        }
    }
    
    
    return answer
}

print(solution(5, [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]))


