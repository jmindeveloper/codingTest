//
//  main.swift
//  이코테_구현_게임개발_Swift
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

let mapSize = readLine()!.split(separator: " ").map { Int($0)! }

// 방문위치 저장위한 배열
var visited = Array(repeating: Array(repeating: 0, count: mapSize[1]), count: mapSize[0])
var inputLocation = readLine()!.split(separator: " ")
var x = Int(inputLocation[0])!
var y = Int(inputLocation[1])!
var direction = Int(inputLocation[2])!
visited[x][y] = 1

// 맵
var map = [[Int]]()
for _ in 0..<mapSize[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(input)
}

// 방향 ( 북동남서 )
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

// 왼쪽회전
func turnLeft() {
    direction -= 1
    if direction == -1 {
        direction = 3
    }
}

var result = 1
var turnCount = 0

while true {
    turnLeft()
    
    var nx = x + dx[direction]
    var ny = y + dy[direction]
    // 회전한 이후 정면에 가보지 않은 칸이 있을경우 이동
    if map[nx][ny] == 0 && visited[nx][ny] == 0 {
        x = nx; y = ny
        result += 1
        visited[nx][ny] = 1
        turnCount = 0
        continue
    } else {
        turnCount += 1
    }
    // 4방향 모두 이동이 불가능할때
    if turnCount == 4 {
        nx = x - dx[direction]
        ny = y - dy[direction]
        // 뒤로 이동 가능?
        if map[nx][ny] == 0 {
            x = nx; y = ny
            turnCount = 0
        } else {
            break
        }
    }
}

print(result)
