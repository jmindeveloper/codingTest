//
//  main.swift
//  프로그래머스_행렬테두리회전하기_Swift
//
//  Created by J_Min on 2022/03/27.
//

import Foundation

func rotate(_ query: [Int], _ matrix: inout [[Int]]) -> Int {
    var tmp = 0
    var minValue = Int.max
    var xy: (x: Int, y: Int) = (query[0], query[1])
    let lengthOfX = query[2] - query[0]
    let lengthOfY = query[3] - query[1]
    
    // 왼 -> 오
    tmp = matrix[xy.x][xy.y]
    for _ in 0..<lengthOfY {
        xy = (xy.x, xy.y + 1)
        swap(&tmp, &matrix[xy.x][xy.y])
        minValue = min(minValue, matrix[xy.x][xy.y])
    }
    // 위 -> 아래
    for _ in 0..<lengthOfX {
        xy = (xy.x + 1, xy.y)
        swap(&tmp, &matrix[xy.x][xy.y])
        minValue = min(minValue, matrix[xy.x][xy.y])
    }
    // 오 -> 왼
    for _ in 0..<lengthOfY {
        xy = (xy.x, xy.y - 1)
        swap(&tmp, &matrix[xy.x][xy.y])
        minValue = min(minValue, matrix[xy.x][xy.y])
    }
    // 아래 -> 위
    for _ in 0..<lengthOfX {
        xy = (xy.x - 1, xy.y)
        swap(&tmp, &matrix[xy.x][xy.y])
        minValue = min(minValue, matrix[xy.x][xy.y])
    }
    
    return minValue
}

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    
    var result = [Int]()
    var matrix = [[Int]]()
    var count = 1
    
    for _ in 0..<rows {
        var arr = [Int]()
        for _ in 0..<columns {
            arr.append(count)
            count += 1
        }
        matrix.append(arr)
    }
    
    for i in 0..<queries.count {
        let query = queries[i].map { $0 - 1 }
        result.append(rotate(query, &matrix))
    }
    
    return result
}
