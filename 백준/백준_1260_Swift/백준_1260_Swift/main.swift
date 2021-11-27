//
//  main.swift
//  백준_1260_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func DFS(start: Int) {
    var visited = [Int]()
    var stack = [start]
    
    while !stack.isEmpty {
        let node = stack.popLast()!
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}

func BFS(start: Int) {
    var visited = [Int]()
    var queue = [start]
    
    while !queue.isEmpty {
        let node = queue.removeFirst()
        
        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            queue.append(contentsOf: graph[node].sorted())
        }
    }
}

var input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let v = input[2]
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n + 1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let src = input[0]
    let dest = input[1]
    graph[src].append(dest)
    graph[dest].append(src)
}

DFS(start: v)
print()
BFS(start: v)


// https://duwjdtn11.tistory.com/488
