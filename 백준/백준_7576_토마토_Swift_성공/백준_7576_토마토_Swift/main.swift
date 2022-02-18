//
//  main.swift
//  백준_7576_토마토_Swift
//
//  Created by J_Min on 2022/02/18.
//

import Foundation

var matrix = readLine()!.split(separator: " ").map { Int($0)! }
var col = matrix[0]
var row = matrix[1]
var graph = [[Int]]()
var queue = [(Int, Int, Int)]()

for i in 0..<row {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    queue.append(contentsOf: input.enumerated().filter ({ $0.element == 1}).map { (i, $0.offset, 1) })
    graph.append(input)
    
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]
var date = [Int]()
var index = 0

while index < queue.count {
    
    // queue.removeFirst()의 시간복잡도는 o(n)이라 시간초과남
    // 포인터만 옮기자
    let tomatoIndex = queue[index]
    index += 1
    
    for i in 0..<4 {
        let nx = tomatoIndex.0 + dx[i]
        let ny = tomatoIndex.1 + dy[i]
        
        if nx >= 0 && nx < row && ny >= 0 && ny < col {
            if graph[nx][ny] == 0 {
                graph[nx][ny] = 1
                queue.append((nx, ny, tomatoIndex.2 + 1))
                date.append(tomatoIndex.2 + 1)
            }
        }
    }
}

var result = 0

if !date.isEmpty {
    result = date.max()! - 1
}

var isDone = false

for i in 0..<graph.count {
    for j in 0..<graph[i].count {
        if graph[i][j] == 0 {
            result = -1
            isDone = true
            break
        }
    }
    if isDone {
        break
    }
}
print(isDone ? "-1" : result)
