//
//  main.swift
//  백준_1918_Swift
//
//  Created by J_Min on 2022/01/21.
//

import Foundation



func changePostfix(_ formula: String) -> String {
    // 연산자 우선순위 가져오는 함수
    func getPriority(_ operators: String.Element) -> Int {
        switch operators {
        case "*":
            return 3
        case "-":
            return 2
        case "+":
            return 2
        case "/":
            return 3
        case "(":
            return 1
        case ")":
            return -1
        default:
            return 0
        }
    }
    
    var numStack = ""
    var operatorStack = ""
    
    for element in formula {

        // 연산자 우선순위
        let elementPriority = getPriority(element)
        
        // 연산자 우선순위가 0일때, 즉 숫자일때 numStack에 푸시
        if elementPriority == 0 {
            numStack.append(element); continue
        }
        
        // ( 일때는 연산자 순위 상관없이 operatorStack에 푸시
        if element == "(" {
            operatorStack.append(element)
            // ) 일때는 operatorStack의 최상단 데이터가 (가 될때까지 pop 해서 numStack에 push
        } else if element == ")" {
            while let opr = operatorStack.popLast() {
                guard opr != "(" else { break }
                numStack.append(opr)
            }
        } else {
            // element가 연산자일때 operatorStack이 비었으면 operatorStack에 push
            guard !operatorStack.isEmpty else { operatorStack.append(element); continue}
            
            // operatorStack이 비어있지 않으면 반복
            // opr에 operatorStack pop 해서 집어넘
            while let opr = operatorStack.popLast() {
                // opr의 연산자 우선순위 구하기
                let operatorPriority = getPriority(opr)
                // opr 우선순위가 연산자 우선순위보다 낮아질때까지
                // operatorStack에서 pop 후 numStack에 push
                // opr 우선순위가 연산자 우선순위보다 낮아지면
                // operatorStack에 element push
                guard elementPriority > operatorPriority else { numStack.append(opr); continue }
                operatorStack.append(opr)
                operatorStack.append(element)
                break
            }
            if operatorStack.isEmpty {
                operatorStack.append(element)
                continue
            }
        }
    }
    
    // operatorStack에 남은 데이터들 차례대로 pop해서 numStack에 push
    for _ in 0..<operatorStack.count {
        numStack.append(operatorStack.removeLast())
    }
    
    return numStack
}

let input = readLine()!
print(changePostfix(input))
