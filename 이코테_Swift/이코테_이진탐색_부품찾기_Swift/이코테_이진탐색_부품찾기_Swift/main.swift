//
//  main.swift
//  이코테_이진탐색_부품찾기_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

func binary(arr: [Int], target: Int) -> String {
    var start = 0
    var end = arr.count - 1
    while start <= end {
        let mid = (start + end) / 2
        if arr[mid] == target {
            return "yes"
        } else if arr[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return "no"
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let targets = readLine()!.split(separator: " ").map { Int($0)! }

var result = [String]()
for i in 0..<m {
    result.append(binary(arr: arr, target: targets[i]))
}

for i in result {
    print(i, terminator: " ")
}
