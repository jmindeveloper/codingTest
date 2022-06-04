//
//  main.swift
//  백준_2655_가장높은탑쌓기_Swift
//
//  Created by J_Min on 2022/06/04.
//

import Foundation

let n = Int(readLine()!)!
var arr: [(index: Int, area: Int, height: Int, weight: Int)] = [(0, 0, 0, 0)]

for i in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((i, input[0], input[1], input[2 ]))
}

arr.sort { $0.weight < $1.weight }
var dp = Array(repeating: 0, count: n + 1)

for i in 1...n {
    for j in 0..<n {
        if arr[i].area > arr[j].area {
            dp[i] = max(dp[i], dp[j] + arr[i].height)
        }
    }
}

var maxHeight = dp.max()!
var index = n - 1
var result = [Int]()

while index != 0 {
    if maxHeight == dp[index] {
        result.append(arr[index].index)
        maxHeight -= arr[index].height
    }
    index -= 1
}

print(result.count)
for i in result.reversed() {
    print(i)
}
