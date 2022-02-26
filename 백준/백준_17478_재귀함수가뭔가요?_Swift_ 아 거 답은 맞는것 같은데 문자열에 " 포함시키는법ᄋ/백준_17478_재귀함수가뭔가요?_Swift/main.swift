//
//  main.swift
//  백준_17478_재귀함수가뭔가요?_Swift
//
//  Created by J_Min on 2022/02/24.
//

import Foundation

let count = Int(readLine()!)!

print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")

func recursiveFunction(_ count: Int, _ lineCount: Int) {
    
    var line = ""
    
    for _ in 0..<lineCount {
        line += "____"
    }
    
    print("\(line)재귀함수가 뭔가요?")
    
    if count > 0 {
        print("\(line)잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
        print("\(line)마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
        print("\(line)그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.")
        recursiveFunction(count - 1, lineCount + 1)
    }
    
    if count == 0 {
        print("\(line)재귀함수는 자기 자신을 호출하는 함수라네")
    }
    print("\(line)라고 답변하였지.")
}

recursiveFunction(count, 0)
