//
//  main.swift
//  백준_10818_Swift
//
//  Created by J_Min on 2021/09/22.
//

import Foundation

let input = Int(readLine()!)!

let input2 = readLine()!.split(separator: " ").map { Int(String($0))!}

let min = input2.min()!
let max = input2.max()!

print("\(min) \(max)")
