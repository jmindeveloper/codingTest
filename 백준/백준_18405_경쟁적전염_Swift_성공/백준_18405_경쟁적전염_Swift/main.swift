//
//  main.swift
//  백준_18405_경쟁적전염_Swift
//
//  Created by J_Min on 2022/02/06.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let row = input1[0]
let virusCount = input1[1]

var graph = [[Int]]()
var data = [(Int, Int, Int, Int)]()
for i in 0..<row {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    for j in 0..<row {
        if graph[i][j] != 0 {
            data.append((graph[i][j], 0, i, j))
        }
    }
}

// 작은순서의 바이러스 먼저 전파되므로 정렬해줌
data = data.sorted(by: { $0.0 < $1.0 })
var queue = data

let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
let sec = input2[0]
let coordinator = (input2[1], input2[2])

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

while !queue.isEmpty {
    
    let virus = queue.removeFirst()
    let virusType = virus.0
    let s = virus.1
    let x = virus.2
    let y = virus.3
    
    if s == sec {
        break
    }
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        if nx >= 0 && nx < row && ny >= 0 && ny < row {
            if graph[nx][ny] == 0 {
                graph[nx][ny] = virusType
                queue.append((virusType, s + 1, nx, ny))
            }
        }
    }
}

print(graph[coordinator.0 - 1][coordinator.1 - 1])
