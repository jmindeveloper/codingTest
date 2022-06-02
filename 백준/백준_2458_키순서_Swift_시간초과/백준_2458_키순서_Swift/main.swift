//
//  main.swift
//  백준_2458_키순서_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var dis = Array(repeating: Array(repeating: 5000, count: n + 1), count: n + 1)

for _ in 1...m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    dis[input[0]][input[1]] = 1
}

for k in 1...n {
    for i in 1...n {
        for j in 1...n {
            dis[i][j] = min(dis[i][j], dis[i][k] + dis[k][j])
        }
    }
}

var answer = 0

for i in 1...n {
    var cnt = 0
    for j in 1...n {
        if dis[i][j] != 5000 || dis[j][i] != 5000 {
            cnt += 1
        }
    }
    if cnt == n - 1 {
        answer += 1
    }
}

print(answer)
