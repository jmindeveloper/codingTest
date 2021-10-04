//
//  main.swift
//  프로그래머스_K번째수_Swift
//
//  Created by J_Min on 2021/09/20.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var arr = array
    var arr2 = [Int]()
    var result = [Int]()
    
    for i in 0..<commands.count {
        print("commands --> \(commands[i][0]...commands[i][1])")
        for _ in commands[i][0]...commands[i][1] {
            let a = arr.remove(at: commands[i][0] - 1)
            arr2.append(a)
            print(arr2)
        }
        arr2 = arr2.sorted()
        result.append(arr2[commands[i][2] - 1])
        arr = array
        arr2 = [Int]()
        print("arr2 --> \(arr2)")
        print("result --> \(result)")
        print("루틴끝")
    }

    return result
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
