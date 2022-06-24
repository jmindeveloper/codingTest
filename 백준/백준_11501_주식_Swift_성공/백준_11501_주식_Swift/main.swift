//
//  main.swift
//  백준_11501_주식_Swift
//
//  Created by J_Min on 2022/06/24.
//

import Foundation

let t = Int(readLine()!)!
func solution(_ n: Int, _ arr: [Int]) {
  var max = arr.last!
  var sum = 0

  for i in arr.reversed() {
    if i > max {
      max = i
    } else {
      sum += max - i
    }
  }
  print(sum)
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    solution(n, arr)
}
