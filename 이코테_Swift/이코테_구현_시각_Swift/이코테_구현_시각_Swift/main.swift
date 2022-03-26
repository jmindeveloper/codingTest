//
//  main.swift
//  이코테_구현_시각_Swift
//
//  Created by J_Min on 2022/02/04.
//

import Foundation

//let hour = Int(readLine()!)!
//var answer = 0
//
//for i in 0...hour {
//    for j in 0..<60 {
//        for k in 0..<60 {
//            let str = String(i) + String(j) + String(k)
//            if str.contains("3") {
//                answer += 1
//            }
//        }
//    }
//}
//
//print(answer)

let hour = Int(readLine()!)!
var answer = 0

for i in 0...hour {
    for j in 0..<60 {
        for k in 0..<60 {
            let totalTime = String(i) + String(j) + String(k)
            if totalTime.contains("3") {
                answer += 1
            }
        }
    }
}

print(answer)
