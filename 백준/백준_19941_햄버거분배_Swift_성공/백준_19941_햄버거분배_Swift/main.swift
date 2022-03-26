//
//  main.swift
//  백준_19941_햄버거분배_Swift
//
//  Created by J_Min on 2022/03/26.
//

// https://www.acmicpc.net/problem/19941

// 가장 왼쪽에 있는 햄버거를 먹어야 한다
// 그렇지 않을경우 다음사람이랑 햄버거의 위치가 멀어져서 못먹는 경우가 생길수 있다

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

var position = Array(readLine()!)
var answer = 0

// index랑 요소 같이 받아오기
for (i, element) in position.enumerated() {
    // 요소가 사람이라면
    if element == "P" {
        // 선택할수 있는 거리 구하기
        // index out of range 조심
        let before = max(0, i - k)
        let after = min(position.count - 1, i + k)
        
        // 현재 위치에서 왼쪽부터 오른쪽으로 선택할수 있는 거리만큼 탐색
        for j in before...after {
            // 햄버거가 나온다면 먹기
            if position[j] == "H" {
                position[j] = "E"
                answer += 1
                break
            }
        }
    }
}

print(answer)


