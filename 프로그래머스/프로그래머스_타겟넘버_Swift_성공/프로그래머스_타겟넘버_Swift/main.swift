//
//  main.swift
//  프로그래머스_타겟넘버_Swift
//
//  Created by J_Min on 2022/02/11.
//

import Foundation

func bfs(_ nums: [Int], _ target: Int, _ numbersCount: Int, _ start: Int) -> Int {
    // (합, index)
    var queue: [(Int, Int)] = [(start, 1)]
    
    var count = 0
    while !queue.isEmpty {
        
        /*
         보통 bfs는 큐를 사용하지만 이 문제같은경우는 bfs를 통한 정렬이 아닌
         탐색이 목적이므로 스택을 사용해도 된다
         스택이 큐보다 시간이 빠르기때문에 스택을 사용
         */
        let element = queue.removeLast()
        // 마지막 index에 도달했을때 합이 target이랑 같다면 count += 1
        if element.1 == numbersCount && element.0 == target {
            count += 1
        }
        if element.1 < numbersCount {
            queue.append((element.0 + nums[element.1], element.1 + 1))
            queue.append((element.0 - nums[element.1], element.1 + 1))
        }
    }
    return count
}

func solution(_ numbers: [Int], _ target: Int) -> Int {
    
    var answer = bfs(numbers, target, numbers.count, numbers.first!)
    // 루트노드도 음수일수 있기때문에 bfs를 한번 더 돌려준다
    answer += bfs(numbers, target, numbers.count, -numbers.first!)
    
    return answer
}

//print(solution([1, 1, 1, 1, 1], 3))
print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 14))
