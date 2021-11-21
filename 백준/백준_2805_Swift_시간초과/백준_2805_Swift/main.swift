//
//  main.swift
//  백준_2805_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

let input = readLine()!.split(separator: " ").compactMap { Int(String($0))}
let wantTreeLength = input[1]
let treesLength = readLine()!.split(separator: " ").compactMap { Int(String($0))}
let maxTreeLength = treesLength.max()!

func BinarySearch(_ arr: [Int]) -> Int {
    
    var min = 0
    var max = maxTreeLength
    
    while min <= max {
        let mid = (min + max) / 2
        var cutTreeLength = 0
        
        for i in arr {
            if i > mid { cutTreeLength += i - mid }
        }
        
        if cutTreeLength == wantTreeLength {
            return mid
        } else if cutTreeLength > wantTreeLength {
            min = mid
        } else {
            max = mid
        }
    }
    return 0
}

print(BinarySearch(treesLength))
