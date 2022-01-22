//
//  main.swift
//  백준_2920_Swift
//
//  Created by J_Min on 2022/01/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0) }
let ascending = [1, 2, 3, 4, 5, 6, 7, 8]
let descending = [8, 7, 6, 5, 4, 3, 2, 1]

if input == ascending {
    print("ascending")
} else if input == descending {
    print("descending")
} else {
    print("mixed")
}

