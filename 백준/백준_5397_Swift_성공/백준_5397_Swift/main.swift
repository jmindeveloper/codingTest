//
//  main.swift
//  백준_5397_Swift
//
//  Created by J_Min on 2022/01/21.
//

import Foundation

let input1 = Int(readLine()!)!
var numStr = [String]()
var result = [String]()

for _ in 0..<input1 {
    let input = readLine()!
    numStr.append(input)
}

func password(_ str: String) -> String {
    let str = Array(str)
    var leftStr = ""
    var rightStr = ""
    
    for i in str {
        print("i --> \(i)")
        if leftStr.isEmpty && (i == "<" || i == "-") {
            continue
        } else if rightStr.isEmpty && i == ">" {
            continue
        }
        
        if i == "<" {
            let moveStr = leftStr.removeLast()
            rightStr.append(moveStr)
            print("rightStr --> \(rightStr)")
        } else if i == ">" {
            let moveStr = rightStr.removeLast()
            leftStr.append(moveStr)
            print("leftStr --> \(leftStr)")
        } else if i == "-"{
            leftStr.removeLast()
        } else {
            leftStr.append(i)
        }
    }
    
    rightStr = String(rightStr.reversed())
    let result = leftStr + rightStr
    
    
    return result
}

for i in numStr {
    let result = password(i)
    print(result)
}


