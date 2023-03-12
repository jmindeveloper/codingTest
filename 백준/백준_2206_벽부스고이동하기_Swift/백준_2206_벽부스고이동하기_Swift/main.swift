//
//  main.swift
//  백준_2206_벽부스고이동하기_Swift
//
//  Created by J_Min on 2022/08/14.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
var map = [[Int]]()
var result = -1
var moveN = [0, 1, 0, -1]
var moveM = [1, 0, -1, 0]
var queue = [(Int, Int, Int, Int)]() // (x, y, count, 벽)
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: nm[1]), count: nm[0])
//var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])
var index = 0

for _ in 0..<nm[0] {
    let input = Array(readLine()!).map { Int(String($0))! }
    map.append(input)
}

func bfs() {
    queue.append((0, 0, 1, 1))
    visited[0][0][1] = true
    
    while queue.count > index {
        print("반복")
        let element = queue[index]
        let x = element.0
        let y = element.1
        let count = element.2
        let broken = element.3
        
        if x == nm[0] - 1, y == nm[1] - 1 {
            result = count
            break
        }
        
        for i in 0..<4 {
            let mx = x + moveN[i]
            let my = x + moveM[i]
            
            if mx >= 0 && mx < nm[0] && my >= 0 && my < nm[1] && !visited[mx][my][broken] {
                if map[mx][my] == 1 && broken == 1 {
                    visited[mx][my][broken - 1] = true
                    queue.append((mx, my, count + 1, broken - 1))
                }
                
                if map[mx][my] == 0 {
                    visited[mx][my][broken] = true
                    queue.append((mx, my, count + 1, broken))
                }
            }
        }
        index += 1
    }
}

bfs()

print(result)


//let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n = nm[0]
//let m = nm[1]
//var arr = [[Int]]()
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: 1001), count: 1001)
//var queue = [((Int, Int, Int), Int)]()//((x,y,depth), 벽부순여부)
//var result = -1
//var index = 0
//
//for _ in 0..<n{
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//func bfs(){
//    queue.append(((0,0, 1), 1))
//    visited[0][0][1] = true
//
//    while queue.count > index{
//        let pop = queue[index]
//
//        if pop.0.0 == n - 1 && pop.0.1 == m - 1{
//            result = pop.0.2
//            break
//        }
//
//        for i in 0..<4{
//            let nx = pop.0.0 + dx[i]
//            let ny = pop.0.1 + dy[i]
//
//            if nx >= 0 && nx < n && ny >= 0 && ny < m && !visited[nx][ny][pop.1]{
//
//                if arr[nx][ny] == 1 && pop.1 == 1{
//                    visited[nx][ny][pop.1 - 1] = true
//                    queue.append(((nx, ny, pop.0.2 + 1), pop.1 - 1))
//                }
//
//                if arr[nx][ny] == 0{
//                    visited[nx][ny][pop.1] = true
//                    queue.append(((nx, ny, pop.0.2 + 1), pop.1))
//                }
//            }
//        }
//        index += 1
//    }
//}
//bfs()
//print(result)
