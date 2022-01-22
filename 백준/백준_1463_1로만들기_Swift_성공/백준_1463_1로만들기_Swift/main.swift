//
//  main.swift
//  백준_1463_1로만들기_Swift
//
//  Created by J_Min on 2022/01/22.
//

//import Foundation
//
//let num = Int(readLine()!)!
//var arr = [0, 0, 1, 1]
//
//func solution(_ num: Int) -> Int {
//
//    if num < 4 {
//        return arr[num]
//    }
//
//    for i in 4...num {
//        var threeNum = [Int]()
//
//        if i % 2 == 0 {
//            threeNum.append(1 + arr[i / 2])
//        }
//        if i % 3 == 0 {
//            threeNum.append(1 + arr[i / 3])
//        }
//        threeNum.append(1 + arr[i - 1])
//        arr.append(threeNum.min()!)
//    }
//
//    return arr.last!
//}
//
//print(solution(num))
//

// 24


import Foundation

let num = Int(readLine()!)!

func solution(_ num: Int) -> Int {
    
    var dp = [Int](repeating: 0, count: 1000001)
    dp[2] = 1
    dp[3] = 1
    
    if num < 4 {
        return dp[num]
    }
    
    for i in 4...num {
        dp[i] = dp[i - 1] + 1
        if i % 2 == 0 {
            dp[i] = dp[i] > (dp[i / 2] + 1) ? dp[i / 2] + 1 : dp[i]
        }
        if i % 3 == 0 {
            dp[i] = dp[i] > (dp[i / 3] + 1) ? dp[i / 3] + 1 : dp[i]
        }
    }
    
    return dp[num]
}

print(solution(num))

//for i in 1...16 {
//    print("\(i) --> \(solution(i))")
//    arr = [0, 0, 1, 1]
//    print("------------")
//}
//print(arr)
////print(solution(7))
