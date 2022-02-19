//
//  main.swift
//  백준_14226_이모티콘_Swift
//
//  Created by J_Min on 2022/02/19.
//

import Foundation

let s = Int(readLine()!)!

// (이모티콘 개수, 시간, 클립보드)
var queue = [(1, 0, 0)]
var visited = [[Int]](repeating: [], count: 2001)

func bfs() -> Int {
    
    var index = 0
    
    while !queue.isEmpty{
        
        let current = queue[index]
        print(current)
        let currentNum = current.0
        let currentIndex = current.1
        let currentSaveNum = current.2
        
        if currentNum == s {
            return currentIndex
        }
        
        // visited에 현재 이모티콘 개수가 없고 현재 이모티콘 개수가 0보다 클때
        if currentNum > 0 && visited[currentNum - 1].isEmpty {
            // 이모티콘 하나 삭제
            queue.append((currentNum - 1, currentIndex + 1, currentSaveNum))
            // visited[currentNum-1]에 클립보드 복사
            visited[currentNum - 1].append(currentSaveNum)
        }
        // 클립보드 복사
        queue.append((currentNum, currentIndex + 1, currentNum))
        // currentNum + currentSaveNum이 2000보다 작거나 같고
        // visited[currentNum + currentSaveNum]에 currentSaveNum이 없을때
        // 즉 현재 이모티콘개수와 클립보드에 저장된 숫자가 이전에 나온적이 없을때
        if currentNum + currentSaveNum <= 2000 && !visited[currentNum + currentSaveNum].contains(currentSaveNum) {
            // 클립보드 붙여넣기
            queue.append((currentNum + currentSaveNum, currentIndex + 1, currentSaveNum))
            visited[currentNum + currentSaveNum].append(currentSaveNum)
        }
        
        
        index += 1
    }
    return 0
}

print(bfs())

