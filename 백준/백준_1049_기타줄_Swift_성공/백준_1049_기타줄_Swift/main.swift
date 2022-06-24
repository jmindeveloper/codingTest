//
//  main.swift
//  백준_1049_기타줄_Swift
//
//  Created by J_Min on 2022/06/24.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
var package = Int.max
var justOne = Int.max
var result = 0
for _ in 0..<nm[1] {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  package = min(package, input[0])
  justOne = min(justOne, input[1])
}

result += min(nm[0] / 6 * package, nm[0] / 6 * justOne * 6)
result += min(nm[0] % 6 * justOne, package)

print(result)
