//
//  main.swift
//  백준_1068_트리_Swift
//
//  Created by J_Min on 2022/02/20.
//

import Foundation

let n = Int(readLine()!)!
var graph = [[Int]](repeating: [], count: n)
var root = 0
var parents = readLine()!.split(separator: " ").map { Int($0)! }
var deleteNode = Int(readLine()!)!


func tree(_ values: [Int]) {
    for i in 0..<values.count {
        if values[i] == -1 {
            root = i
            continue
        }
        graph[values[i]].append(i)
    }
}

func deleteNode(_ root: Int) -> Int {
    
    var queue = [root]
    var answer = 0
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if graph[current].isEmpty {
            answer += 1
        }
        
        for i in graph[current] {
            if i == deleteNode {
                if graph[current].count == 1 {
                    answer += 1
                }
            }
            continue
        }
        queue.append(contentsOf: graph[current])
    }
    return answer
}

//func findLeafNode(_ root: Int) -> Int {
//
//    var queue = [root]
//    var result = 0
//
//    while !queue.isEmpty {
//        let current = queue.removeFirst()
//        if graph[current].isEmpty {
//            if current == 0 {
//                return 0
//            }
//            result += 1
//        }
//
//        queue.append(contentsOf: graph[current])
//    }
//    return result
//}

tree(parents)
print(graph)
print(deleteNode(root))

