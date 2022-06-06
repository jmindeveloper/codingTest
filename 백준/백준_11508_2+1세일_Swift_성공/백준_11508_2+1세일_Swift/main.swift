//
//  main.swift
//  백준_11508_2+1세일_Swift
//
//  Created by J_Min on 2022/06/06.
//

import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
  arr.append(Int(readLine()!)!)
}
arr.sort()

var result = 0

while !arr.isEmpty {

  if arr.count >= 3 {
    result += arr.removeLast()
    result += arr.removeLast()
    arr.removeLast()
  } else {
    result += arr.reduce(0) { $0 + $1 }
    break
  }
}

print(result)

