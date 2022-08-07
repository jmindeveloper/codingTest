//
//  main.swift
//  백준_14719_빗물_Swift
//
//  Created by J_Min on 2022/08/07.
//

import Foundation

let hw = readLine()!.split(separator: " ").map { Int($0)! }
let arr = readLine()!.split(separator: " ").map { Int($0)! }
var map = Array(repeating: Array(repeating: 0, count: hw[1]), count: hw[0])

for i in 0..<arr.count {
    for j in 0..<arr[i] {
        map[j][i] = 1
    }
}
map.reverse()

// 왼쪽검사
for i in 0..<map.count {
    for j in 0..<map[i].count {
        if map[i][j] != 0 {
            break
        } else {
            map[i][j] = -1
        }
    }
}

// 오른쪽검사
for i in 0..<map.count {
    for j in (0..<map[i].count).reversed() {
        if map[i][j] != 0 {
            break
        } else {
            map[i][j] = -1
        }
    }
}

var result = 0
for i in map {
    result += i.filter { $0 == 0 }.count
}

print(result)
