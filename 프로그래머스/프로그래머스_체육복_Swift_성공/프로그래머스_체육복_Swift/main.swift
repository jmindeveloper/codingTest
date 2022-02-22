//
//  main.swift
//  프로그래머스_체육복_Swift
//
//  Created by J_Min on 2021/09/10.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

    var studentArr = [(Int, Int)]()
    studentArr = lost.map { ($0, 0)}
    studentArr.append(contentsOf: reserve.map { ($0, 2) })
    studentArr.sort { $0.0 < $1.0 }
    var deleteArr = [Int]()
    
    // 두게가져왔는데 한게 도둑맞음
    for i in 1..<studentArr.count {
        if studentArr[i].0 == studentArr[i - 1].0 {
            deleteArr.append(i)
            deleteArr.append(i - 1)
        }
    }
    
    if !deleteArr.isEmpty {
        let arr = studentArr
        studentArr.removeAll()
        
        for i in 0..<arr.count {
            if !deleteArr.contains(i) {
                studentArr.append(arr[i])
            }
        }
    }
    
    var result = n - studentArr.count
    
    for i in stride(from: studentArr.count - 1, through: 0, by: -1) {
        if studentArr[i].1 == 0 {
            if i != studentArr.count - 1 && studentArr[i + 1].1 == 2 && abs(studentArr[i].0 - studentArr[i + 1].0) == 1  {
                studentArr[i].1 = 1
                studentArr[i + 1].1 = 1
                continue
            } else if studentArr[i].1 == 0 {
                if i != 0 && studentArr[i - 1].1 == 2 && abs(studentArr[i].0 - studentArr[i - 1].0) == 1 {
                    studentArr[i].1 = 1
                    studentArr[i - 1].1 = 1
                    continue
                }
            }
        }
    }
    
    result += studentArr.filter { $0.1 > 0 }.count
    
    return result
}
