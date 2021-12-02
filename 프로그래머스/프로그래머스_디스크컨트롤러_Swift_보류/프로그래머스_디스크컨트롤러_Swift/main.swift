//
//  main.swift
//  프로그래머스_디스크컨트롤러_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func solution(_ arr: [[Int]]) -> Int {
    
    var jobs = [[Int]]()
    var time = 0
    var result = 0
    
    for i in arr {
        jobs.append([i[0], i[1] - i[0]])
    }
    
    result += jobs[0][1]
    time += jobs[0][1]
    jobs.removeFirst()
    jobs.sort {
        $0[1] < $1[1]
    }
    
    while !jobs.isEmpty {
        for i in jobs {
            if time < i[0] {
                continue
            } else if i == jobs.last {
                jobs.sort { $0[0] < $1[0] }
                time += jobs.first![1]
                result  = result + result + jobs.first![1]
                jobs.removeFirst()
                jobs.sort { $0[1] < $1[1] }
            } else {
                time += i[1]
                result  = result + result + i[1]
                let index = jobs.firstIndex(of: i)
                jobs.remove(at: index!)
                break
            }
        }
    }
    
    return result / arr.count
}

print(solution([[0, 3], [1, 9], [2, 6]]))
