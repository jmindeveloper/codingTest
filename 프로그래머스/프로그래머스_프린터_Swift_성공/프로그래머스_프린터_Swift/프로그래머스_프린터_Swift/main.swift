//
//  main.swift
//  프로그래머스_프린터_Swift
//
//  Created by J_Min on 2021/11/14.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue = priorities
    var index = location
    var count = 0
    while true {
        var x = false
        let dequeueElement = queue.removeFirst()
        index -= 1
        for i in queue {
            if i > dequeueElement {
                if index == -1 {
                    index = queue.count
                    queue.append(dequeueElement)
                    x = true
                    break
                } else {
                    queue.append(dequeueElement)
                    x = true
                    break
                }
                
            }
        }
        if x == true {
            continue
        }
        count += 1
        if index == -1 {
            return count
        }
    }
}

print(solution([1, 1, 9, 1, 1, 1], 0))
print(solution([2,1, 3, 2], 2))
