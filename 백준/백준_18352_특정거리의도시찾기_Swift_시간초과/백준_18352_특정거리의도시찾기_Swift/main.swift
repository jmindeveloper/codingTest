//
//  main.swift
//  백준_18352_특정거리의도시찾기_Swift
//
//  Created by J_Min on 2022/02/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let cityCount = input[0]
let roadCount = input[1]
let targetDistance = input[2]
let start = input[3]

var graph: [[Int]] = Array(repeating: [], count: cityCount + 1)

for _ in 0..<roadCount {
    let connection = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[connection[0]].append(connection[1])
}
print(graph)
var distance = Array(repeating: -1, count: cityCount + 1)
distance[start] = 0

func bfs(start: Int) {
    
    var queue = [start]
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        for next in graph[now] {
            if distance[next] == -1 {
                distance[next] = distance[now] + 1
                if !queue.contains(next) {
                    queue.append(next)
                }
            }
        }
    }
}
bfs(start: start)

var check = false
for i in 1...cityCount {
    if distance[i] == targetDistance {
        print(i)
        check = true
    }
}

if check == false {
    print(-1)
}
