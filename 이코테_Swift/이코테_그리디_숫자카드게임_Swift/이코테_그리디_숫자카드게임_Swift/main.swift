//
//  main.swift
//  이코테_그리디_숫자카드게임_Swift
//
//  Created by J_Min on 2022/03/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var arr = [Int]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! }.min()!)
}

print(arr.max()!)
