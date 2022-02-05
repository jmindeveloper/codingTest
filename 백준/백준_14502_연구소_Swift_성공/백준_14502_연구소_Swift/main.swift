//
//  main.swift
//  백준_14502_연구소_Swift
//
//  Created by J_Min on 2022/02/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var row = input[0]
var column = input[1]
var graph = [[Int]]()
var temp = Array(repeating: Array(repeating: 0, count: column), count: row)
var virusLocation = [(Int, Int)]()
var zeroLocation = [(Int, Int)]()

for _ in 0..<row {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// 0이랑 2 좌표 저장
for i in 0..<row {
    for j in 0..<column {
        if graph[i][j] == 2 {
            virusLocation.append((i, j))
        } else if graph[i][j] == 0 {
            zeroLocation.append((i, j))
        }
    }
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

// 바이러스 전파
func virus(x: Int, y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if nx >= 0 && nx < row && ny >= 0 && ny < column {
            if temp[nx][ny] == 0 {
                temp[nx][ny] = 2
                virus(x: nx, y: ny)
            }
        }
    }
}
virus(x: 0, y: 0)
// safeArea 계산
func getSafeArea() -> Int {
    var count = 0
    for i in 0..<row {
        for j in 0..<column {
            if temp[i][j] == 0 {
                count += 1
            }
        }
    }
    return count
}

// 벽 설치하며 안전영역 크기 계산
var result = 0

// 완전탐색
for i in 0..<zeroLocation.count {
    for j in i + 1..<zeroLocation.count {
        for k in j + 1..<zeroLocation.count {
            temp = graph
            // 벽설치
            temp[zeroLocation[i].0][zeroLocation[i].1] = 1
            temp[zeroLocation[j].0][zeroLocation[j].1] = 1
            temp[zeroLocation[k].0][zeroLocation[k].1] = 1
            // 바이러스 전파
            for virusIndex in virusLocation {
                virus(x: virusIndex.0, y: virusIndex.1)
            }
            result = max(result, getSafeArea())
        }
    }
}


print(result)

