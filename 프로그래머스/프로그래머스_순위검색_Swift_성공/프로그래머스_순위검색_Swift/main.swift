//
//  main.swift
//  프로그래머스_순위검색_Swift
//
//  Created by J_Min on 2022/06/04.
//

import Foundation

/* 효율성 실패
func solution(_ info:[String], _ query:[String]) -> [Int] {
    
    var queries = [[String]]()
    var infos = [[String]]()
    var result = [Int]()
    
    for i in info {
        let io = i.components(separatedBy: " ")
        infos.append(io)
    }
    
    for i in query {
        var q = i.components(separatedBy: " and ")
        q.append(contentsOf: q.removeLast().components(separatedBy: " "))
        q.removeAll { $0 == "-" }
        queries.append(q)
    }
    
for query in queries {
        var filterInfo = infos
        for q in query {
            if !q.first!.isNumber {
                filterInfo = filterInfo.filter { $0.contains(q) }
            } else {
                filterInfo = filterInfo.filter { Int(String($0.last!))! >= Int(q)! }
            }
        }
        result.append(filterInfo.count)
    }
    
    return result
}
 */

import Foundation

// 카카오 해설 참고
func solution(_ info:[String], _ query:[String]) -> [Int] {
    
    var dic = [String: [Int]]()
    var result = [Int]()
    
    for i in info {
        let arr = i.components(separatedBy: " ")
        let language = [arr[0], "-"]
        let position = [arr[1], "-"]
        let career = [arr[2], "-"]
        let food = [arr[3], "-"]
        let score = Int(arr[4])!
        
        for l in language {
            for p in position {
                for c in career {
                    for f in food {
                        let key = "\(l)\(p)\(c)\(f)"
                        if dic[key] == nil {
                            dic[key] = [score]
                        } else {
                            dic[key]!.append(score)
                        }
                    }
                }
            }
        }
    }
    
    for i in dic {
        let arr = i.value.sorted(by: <)
        dic[i.key] = arr
    }
    
    for i in query {
        let str = i.replacingOccurrences(of: "and ", with: "")
        let arr = str.components(separatedBy: " ")
        let key = "\(arr[0])\(arr[1])\(arr[2])\(arr[3])"
        let score = Int(arr[4])!
        
        if let scoreArr = dic[key] {
            // scoreArr.sort(by: <)
            var min = 0
            var max = scoreArr.count - 1
            var mid = 0
        
            while min <= max {
                mid = (min + max) / 2
                if scoreArr[mid] < score {
                    min = mid + 1
                } else {
                    max = mid - 1
                }
            }
            result.append(scoreArr.count - min)
        } else {
            result.append(0)
        }
    }
    
    return result
}

print(solution(["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"], ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]))

