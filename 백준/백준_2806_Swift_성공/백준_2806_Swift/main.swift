//
//  main.swift
//  백준_2806_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func DFS(start: Int) -> Int {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        
        if !visited.contains(node) {
            visited.append(node)
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
    return visited.count - 1
}

let computerNum = Int(readLine()!)!
let edge = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: computerNum + 1)

for _ in 0..<edge {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let src = input[0]
    let dest = input[1]
    graph[src].append(dest)
    graph[dest].append(src)
}
print(DFS(start: 1))


