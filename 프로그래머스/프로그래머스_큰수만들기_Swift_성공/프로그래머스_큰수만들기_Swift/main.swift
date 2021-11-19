//
//  main.swift
//  프로그래머스_큰수만들기_Swift
//
//  Created by J_Min on 2021/11/14.
//

import Foundation

//func solution(_ number:String, _ k:Int) -> String {
//    var num: [Character] = number.map { $0 }
//    var count: Int = 0
//    var noMore = true
//
//    while count < k {
//        noMore = true
//        for i in 0..<num.count - 1 {
//            if num[i] < num[i + 1] {
//                num.remove(at: i)
//                count += 1
//                noMore = false
//                print(num)
//                break
//            }
//        }
//        if noMore {
//            for _ in 0..<k - count {
//                num.removeLast()
//            }
//            break
//        }
//    }
//    let result = num.reduce("") { "\($0)\($1)"}
//    return result
//}

func solution(_ number:String, _ k:Int) -> String {
    let num: [Character] = number.map { $0 }
    var stack = [Character]()
    var i = 0
    var count = 0
    
    while count < k && i < num.count {
        
        guard let stackLast = stack.last else {
            stack.append(num[i])
            i += 1
            continue
        }
        
        if stackLast < num[i] {
            stack.removeLast()
            count += 1
            continue
        }
        stack.append(num[i])
        i += 1
    }
    
    if count >= k {
        stack.append(contentsOf: num[i...])
    }
    
    if i >= num.count {
        return stack[0..<num.count - k].reduce("") { "\($0)\($1)" }
    }
    let result = stack.reduce("") { "\($0)\($1)" }
    return result
}


print(solution("1477252841", 4))


// 참고: https://tngusmiso.tistory.com/52
