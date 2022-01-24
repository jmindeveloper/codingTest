//
//  main.swift
//  백준_1932_정수삼각형_Swift
//
//  Created by J_Min on 2022/01/24.
//

import Foundation

let n = Int(readLine()!)!
var triangleArr = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    triangleArr.append(input)
}

func solution(_ triangleArr: [[Int]]) -> Int {
    var dp = [[Int]]()
    dp.append(triangleArr[0])
    
    for row in 1..<triangleArr.count {
        var arr = [Int]()
        for index in 0..<triangleArr[row].count {
            
            if index == 0 {
                arr.append(dp[row - 1][0] + triangleArr[row][index])
                continue
            }
            if index == triangleArr[row].count - 1 {
                arr.append(dp[row - 1].last! + triangleArr[row][index])
                continue
            }
            
            let sum1 = dp[row - 1][index - 1] + triangleArr[row][index]
            let sum2 = dp[row - 1][index] + triangleArr[row][index]
            arr.append(max(sum1, sum2))
            
        }
        dp.append(arr)
    }
    
    return dp.last!.max()!
}

print(solution(triangleArr))
