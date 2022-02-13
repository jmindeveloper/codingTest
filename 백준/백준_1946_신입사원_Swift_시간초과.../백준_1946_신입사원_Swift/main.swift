//
//  main.swift
//  백준_1946_신입사원_Swift
//
//  Created by J_Min on 2022/02/13.
//

import Foundation

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let scoreCount = Int(readLine()!)!
    var scores = [[Int]]()
    for _ in 0..<scoreCount {
        let score = readLine()!.split(separator: " ").map { Int($0)! }
        scores.append(score)
    }
    
    scores.sort { $0[0] < $1[0]}
    var minScore = scores.first![1]
    var answer = 1
    
    for i in 1..<scores.count {
        if scores[i][1] < minScore {
            answer += 1
            minScore = scores[i][1]
        }
    }
    print(answer)
}
