//
//  main.swift
//  백준_11497_통나무건너뛰기_Swift
//
//  Created by J_Min on 2022/02/12.
//

import Foundation

let testCase = Int(readLine()!)!

func sort(_ arr: [Int], count: Int) -> [Int] {
    let arr = arr.sorted()
    var sortArr = [Int]()
    
    if count % 2 == 0 {
        for i in stride(from: 0, to: count, by: 2) {
            sortArr.append(arr[i])
        }
        for i in stride(from: count - 1, to: 0, by: -2) {
            sortArr.append(arr[i])
        }
    } else {
        for i in stride(from: 0, to: count, by: 2) {
            sortArr.append(arr[i])
        }
        for i in stride(from: count - 2, to: 0, by: -2) {
            sortArr.append(arr[i])
        }
    }
    
    return sortArr
}

func dificulltyLevel(_ arr: [Int]) -> Int {
    var result = abs(arr[0] - arr[1])
    
    for i in 1..<arr.count {
        result = max(result, abs(arr[i - 1] - arr[i]))
    }
    return result
}

for _ in 0..<testCase {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    let sortArr = sort(arr, count: n)
    
    print(dificulltyLevel(sortArr))
    
}


