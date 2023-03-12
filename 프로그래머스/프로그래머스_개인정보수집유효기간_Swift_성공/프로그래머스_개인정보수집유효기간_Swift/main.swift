//
//  main.swift
//  프로그래머스_개인정보수집유효기간_Swift
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var result = [Int]()
    var privacies = privacies.map {
        $0.components(separatedBy: [" ", "."])
    }
    
    terms.forEach {
        let aa = $0.components(separatedBy: " ")
        let alphabet = aa[0]
        let term = Int(aa[1])!
        privacies.enumerated().forEach { (index, value) in
            var value = value
            if value.removeLast() == alphabet {
                var intValue = value.map { Int($0)! }
                
                intValue[1] += term
                intValue[2] -= 1
                
                if intValue[2] == 0 {
                    intValue[2] = 28
                    intValue[1] -= 1
                }
                
                while intValue[1] > 12 {
                    intValue[1] -= 12
                    intValue[0] += 1
                }
                
                var valueString = intValue.reduce("") {
                    $0 + "." + String(format: "%02d", $1)
                }
                valueString.removeFirst()
                
                if today > valueString {
                    result.append(index + 1)
                }
            }
        }
    }
    return result.sorted(by: <)
}
