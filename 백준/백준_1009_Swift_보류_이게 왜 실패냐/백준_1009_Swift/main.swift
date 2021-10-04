//
//  main.swift
//  백준_1009_Swift
//
//  Created by J_Min on 2021/08/29.
//

import Foundation


let n = Int(readLine()!)!
var remainder = [Int]()

Array(0..<n).forEach { _ in
    let a = readLine()!.split(separator: " ").map{ Int($0)! }
    var b = a[0]
    
    for _ in 1..<a[1] {
        b = b * a[0] % 10
    }
    remainder.append(b)
}


for i in remainder {
    print(i)
}
