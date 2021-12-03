//
//  main.swift
//  백준_10974_Swift
//
//  Created by J_Min on 2021/12/03.
//

import Foundation

let input = Int(readLine()!)!
var elements = [Int]()
for i in 1...input {
    elements.append(i)
}

func permutation(_ elements: [Int], _ k: Int) -> [String] {
    var result = [String]()
    var visited = [Bool](repeating: false, count: k)
    
    func permute(_ now: [String]) {
        if now.count == k {
            result.append(now.joined(separator: " "))
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permute(now + [String(elements[i])])
            visited[i] = false
        }
    }
    permute([])
    return result
}

for i in permutation(elements, input) {
    print(i)
}
