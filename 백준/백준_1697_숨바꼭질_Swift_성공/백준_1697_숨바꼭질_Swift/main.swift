//
//  main.swift
//  백준_1697_숨바꼭질_Swift
//
//  Created by J_Min on 2022/02/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
// 수빈
let n = input[0]
// 동생
let k = input[1]

var queue = [(n, 0)]
var result = 0
var visited = Array(repeating: false, count: 200001)

while !queue.isEmpty {

    let location = queue.removeFirst()

    if location.0 == k {
        result = location.1
        break
    }

    if !visited[location.0 + 1] && location.0 + 1 < 100001 {
        queue.append((location.0 + 1, location.1 + 1))
        visited[location.0 + 1] = true
    }

    if location.0 > 0 {
        if !visited[location.0 - 1] && location.0 - 1 >= 0 {
            queue.append((location.0 - 1, location.1 + 1))
            visited[location.0 - 1] = true
        }
    }

    if !visited[location.0 * 2] && location.0 * 2 < 100001 {
        queue.append((location.0 * 2, location.1 + 1))
        visited[location.0 * 1] = true
    }
}

print(result)



