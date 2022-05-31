//
//  main.swift
//  프로그래머스_소수찾기_Swift
//
//  Created by J_Min on 2022/05/21.
//

import Foundation

func solution(_ numbers:String) -> Int {
    let nums = Array(numbers).map { Int(String($0))! }
    var visited = Array(repeating: false, count: nums.count + 1)
    var res = ""
    var primeNum = [Int]()
    
    func isPrimeNumber(num: Int) {
        if num < 2 {
            return
        }
        for i in 2..<num {
            if num % i == 0 {
                return
            }
        }
        primeNum.append(num)
    }
    
    func dfs(x: Int) {
        if x == nums.count {
            return
        }
        
        for i in 0..<nums.count {
            if !visited[i] {
                res += String(nums[i])
                visited[i] = true
                if !primeNum.contains(Int(res)!) {
                    isPrimeNumber(num: Int(res)!)
                }
                dfs(x: x + 1)
                res.removeLast()
                visited[i] = false
            }
        }
    }
    
    dfs(x: 0)
    return primeNum.count
}

print(solution("1231"))
