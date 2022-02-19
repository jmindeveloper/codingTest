//
//  main.swift
//  백준_1764_듣보잡_Swift
//
//  Created by J_Min on 2022/02/19.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Set<String>()
var arr2 = Set<String>()

for _ in 0..<input[0] {
    let name = readLine()!
    arr.insert(name)
}

for _ in 0..<input[1] {
    let name = readLine()!
    arr2.insert(name)
}

var result = arr.intersection(arr2)

print(result.count)
let resultString = result.sorted()
for name in resultString {
    print(name)
}

