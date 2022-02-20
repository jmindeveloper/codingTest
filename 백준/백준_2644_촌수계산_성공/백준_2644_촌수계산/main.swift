//
//  main.swift
//  백준_2644_촌수계산
//
//  Created by J_Min on 2022/02/20.
//

import Foundation

let n = Int(readLine()!)!
let chonsoo = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: 101)
var visited = Array(repeating: false, count: 101)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
}

var queue = [(Int, Int)]()

func bfs(_ start: Int, _ visited: inout [Bool]) -> Int {
    for i in graph[start] {
        queue.append((i, 1))
    }
    
    while !queue.isEmpty {
        
        let current = queue.removeFirst()
        
        if current.0 == chonsoo[1] {
            return current.1
        }
        
        if visited[current.0] == false {
            for i in graph[current.0] {
                queue.append((i, current.1 + 1))
            }
            visited[current.0] = true
        }
    }
    
    return -1
}

print(bfs(chonsoo[0], &visited))

