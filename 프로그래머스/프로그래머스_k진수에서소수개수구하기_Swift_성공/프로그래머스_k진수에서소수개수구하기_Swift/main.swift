//
//  main.swift
//  프로그래머스_k진수에서소수개수구하기_Swift
//
//  Created by J_Min on 2022/02/19.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {

    // 제곱근으로 소수판별
    func isPrimeNum(_ num: Int) -> Bool {

        let sqrtNum: Int = Int(sqrt(Double(num)))

        if num < 2 {
            return false
        } else {
            for i in 2..<sqrtNum + 1 {
                if num % i == 0 {
                    return false
                }
            }
        }
        return true
    }
    
    let jinsoo = Array(String(n, radix: k))
    print(jinsoo)
    var num = ""
    var result = 0
    // num에 숫자를 하나씩 저장하다가 0이 들어오면 소수판별
    for i in jinsoo {
        num.append(i)
        print(num)
        if num.last! == "0" {
            print("0나왔다")
            if num.count > 1 {
                num.removeLast()
            }
            if isPrimeNum(Int(num)!) {
                print("소수다")
                result += 1
            }
            num = ""
        }
    }
    
    // 마지막 숫자가 0이 아닐경우 P0의 경우를 만족할수 있기때문에
    // 소수판별함수를 한번 더 돌려줌
    if num != "" && isPrimeNum(Int(num)!) {
        result += 1
    }
    
    return result
}

print("result --> \(solution(437674, 3))")
