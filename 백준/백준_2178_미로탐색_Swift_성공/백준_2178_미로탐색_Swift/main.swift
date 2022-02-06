//
//  main.swift
//  백준_2178_미로탐색_Swift
//
//  Created by J_Min on 2022/02/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let row = input[0]
let column = input[1]
var map = [[Int]]()

for _ in 0..<row {
    let str = Array(readLine()!)
    map.append(str.map { Int(String($0))! })
}

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs(x: Int, y: Int) {
    var queue = [(x, y)]
    
    while !queue.isEmpty {
        let loca = queue.removeFirst()
        let locaX = loca.0
        let locaY = loca.1
        
        for i in 0..<4 {
            let nx = locaX + dx[i]
            let ny = locaY + dy[i]
            
            if nx < 0 || nx >= row || ny < 0 || ny >= column {
                continue
            }
            if map[nx][ny] == 0 {
                continue
            }
            if map[nx][ny] == 1 {
                map[nx][ny] = map[locaX][locaY] + 1
                queue.append((nx, ny))
            }
        }
    }
}
bfs(x: 0, y: 0)
print(map[row - 1][column - 1])
