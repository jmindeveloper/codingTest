//
//  main.swift
//  백준_2847_게임을만든동준이_Swift
//
//  Created by J_Min on 2022/05/05.
//

import Foundation

let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var result = 0
for i in (1..<n).reversed() {
    if arr[i] == arr[i - 1] {
        result += 1
        arr[i - 1] = arr[i - 1] - 1
    } else if arr[i] < arr[i - 1] {
        result += (arr[i - 1] - arr[i] + 1)
        arr[i - 1] = arr[i - 1] - (arr[i - 1] - arr[i] + 1)
    } else {
        continue
    }
}

print(result)
