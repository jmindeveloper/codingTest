//
//  main.swift
//  프로그래머스_디스크컨트롤러_Swift
//
//  Created by J_Min on 2021/11/27.
//

import Foundation

func solution(_ arr: [[Int]]) -> Int {

    var time = 0
    var result = 0

    var jobs = arr.sorted { $0[0] == $1[0] ? $0[1] < $0[1] : $0[0] < $1[0] }
    jobs.sort { $0[1] == $1[1] ? $0[0] < $0[0] : $0[1] < $1[1] }
    print(jobs)

    while !jobs.isEmpty {
        for i in 0..<jobs.count {
            if jobs[i][0] <= time {
                time += jobs[i][1]
                result += time - jobs[i][0]
                print(time)
                print(result)
                jobs.remove(at: i)
                break
            }
            
            if i == jobs.count - 1 {
                time += 1
            }
        }
    }

    return result / arr.count
}


print(solution([[0, 3], [1, 9], [2, 6]]))

// 참고: https://fomaios.tistory.com/entry/프로그래머스-디스크-컨트롤러-Swift
// sort에도 3항연산자를 쓸수 있을거라곤 생각도 못함
