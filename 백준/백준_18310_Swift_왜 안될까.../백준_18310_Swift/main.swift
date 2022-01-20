//
//  main.swift
//  백준_18310_Swift
//
//  Created by J_Min on 2022/01/20.
//

import Foundation

let input1 = Int(readLine()!)!
let input2 = readLine()!.split(separator: " ").map { $0 }.sorted()

if input1 % 2 == 1 {
    print(input2[input2.count / 2])
} else {
    print(input2[(input2.count - 1) / 2])
}
