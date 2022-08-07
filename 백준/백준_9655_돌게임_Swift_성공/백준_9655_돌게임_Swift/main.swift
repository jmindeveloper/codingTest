//
//  main.swift
//  백준_9655_돌게임_Swift
//
//  Created by J_Min on 2022/08/07.
//

import Foundation

var n = Int(readLine()!)!
let last = (n / 3) % 2 == 1 ? "SK" : "CY"
n = n % 3

switch n {
  case 0, 2:
    print(last)
  case 1:
    if last == "SK" {
      print("CY")
    } else {
      print("SK")
    }
  default: break
}
