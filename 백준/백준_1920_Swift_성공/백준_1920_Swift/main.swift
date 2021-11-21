//
//  main.swift
//  백준_1920_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

let input = Int(readLine()!)
var elements = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

var input2 = Int(readLine()!)!
var elements2 = readLine()!.split(separator: " ").map { Int($0)! }

func binarySearch(_ arr: [Int], item: Int) -> Int {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = arr[mid]
        
        if guess == item {
            return 1
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return 0
}

for i in elements2 {
    let result = binarySearch(elements, item: i)
    print(result)
}
