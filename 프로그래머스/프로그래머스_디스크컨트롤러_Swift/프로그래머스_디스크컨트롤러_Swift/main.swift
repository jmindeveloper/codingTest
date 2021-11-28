//
//  main.swift
//  프로그래머스_디스크컨트롤러_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func solution(_ jobs: [[Int]]) -> Int {
    
    if jobs.count == 1 {
        return jobs[0][1]
    }
    
    var arr = [[Int]]()
    var result = 0
    
    for i in jobs {
        arr.append([i[0], i[1] - i[0]])
    }
    arr.sort { $0[0] < $1[0] }
    print(arr)
    
    result += arr[0][1]
    
    for i in 1..<arr.count {
        if arr[i][0] < arr[i - 1][1] {
            result = result + result + arr[i][1]
            print(result)
        } else {
            
        }
    }
    
    return result / arr.count
}

print(solution([[0, 3], [1, 9], [2, 6]]))
