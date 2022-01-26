//
//  main.swift
//  프로그래머스_무지의 먹방 라이브_Swift
//
//  Created by J_Min on 2022/01/26.
//

import Foundation

func solution(_ food_times:[Int], _ k:Int64) -> Int {
    
    var foodTimes = food_times
    var k = k
    
    if foodTimes.min()! > k {
        return Int(k % Int64(foodTimes.count) + 1)
    }
    
    while k > 0 {
        if foodTimes.isEmpty {
            return -1
        }
        let minTime = foodTimes.min()!
        
        if k > minTime {
            for i in 0..<foodTimes.count {
                foodTimes[i] = foodTimes[i] - minTime
                k -= Int64(minTime)
                print("k --> \(k)")
                if k <= 0 {
                    if foodTimes.isEmpty {
                        return -1
                    }
                    while true {
                        var count: Int64 = 1
                        if count > foodTimes.count {
                            count = 1
                        }
                        if foodTimes[Int(k % Int64(foodTimes.count) + count)] == 0 {
                            count += 1; continue
                        } else {
                            return foodTimes[Int(k % Int64(foodTimes.count) + count)]
                        }
                    }
                }
                
            }
        } else {
            while true {
                var count: Int64 = 1
                
                if count > foodTimes.count {
                    count = 1
                }
                

                
                
                if foodTimes[Int(k % Int64(foodTimes.count) + count)] == 0 {
                    count += 1; continue
                } else {
                    return foodTimes[Int(k % Int64(foodTimes.count) + count)]
                }
            }
        }
        print(k)
        print(foodTimes)
    }
    
    return 0
}

print(solution([3, 1, 2], 5))
