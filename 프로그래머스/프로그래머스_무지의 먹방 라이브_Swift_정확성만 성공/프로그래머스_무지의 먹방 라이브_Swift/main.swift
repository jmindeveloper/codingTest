//
//  main.swift
//  프로그래머스_무지의 먹방 라이브_Swift
//
//  Created by J_Min on 2022/01/26.
//

import Foundation

func solution(_ food_times:[Int], _ k:Int64) -> Int {
    
    var foodTimes = [[Int]]()
    var k = Int(k)
    var result = 0
    var foodCount = food_times.count
    
    guard food_times.reduce(0, +) > k else {
        return -1
    }
    
    for i in 0..<food_times.count {
        foodTimes.append([food_times[i], i + 1])
    }
    
    let minTime = foodTimes.sorted { $0[0] < $1[0] }.filter { $0[0] != 0 }.first![0]
    
    while k > 0 {
        if minTime * foodCount >= k {
            foodTimes.removeAll { $0[0] <= 0 }
            result = foodTimes[k % foodCount][1]
            return result
        } else {
            foodTimes = foodTimes.map { [$0[0] - minTime, $0[1]] }
            
            let filter = foodTimes.filter { $0[0] == 0 }
            k -= minTime * foodCount
            foodCount -= filter.count
        }
    }
    return result
}

print(solution([4,2,3,6,7,1,5,8], 27))

print("3, 1, 1 // 5")
print(solution([3, 1, 1], 5))

