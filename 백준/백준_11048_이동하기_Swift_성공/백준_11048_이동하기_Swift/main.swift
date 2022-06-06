//
//  main.swift
//  백준_11048_이동하기_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
var arr = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(input)
}

for i in 1..<m {
    arr[0][i] += arr[0][i - 1]
}

for i in 1..<n {
    arr[i][0] += arr[i - 1][0]
}

for i in 1..<n {
    for j in 1..<m {
        arr[i][j] = max(arr[i - 1][j] + arr[i][j], arr[i][j - 1] + arr[i][j])
    }
}

print(arr[n - 1][m - 1])
