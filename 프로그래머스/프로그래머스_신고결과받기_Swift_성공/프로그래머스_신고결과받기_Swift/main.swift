//
//  main.swift
//  프로그래머스_신고결과받기_Swift
//
//  Created by J_Min on 2022/01/24.
//

import Foundation

func solution(_ id_list:[String], _ reports:[String], _ k:Int) -> [Int] {
    
    // 중복값 걸러내기
    let idListSet = Set(reports)
    let idList = Array(idListSet)
    var result = [Int](repeating: 0, count: id_list.count)
    var dic = [String.SubSequence: [String.SubSequence]]()
    
    for i in 0..<idList.count {
        let report = idList[i].split(separator: " ")
        if dic.keys.contains(report[1]) { // dic key에 신고당한사람 있으면
            dic[report[1]]!.append(report[0]) // 신고당한사람 key의 배열에 신고한사람 append
        } else { // dic key에 신고당한사람 없으면
            dic[report[1]] = [report[0]] // key만들고 value에 배열만들기
        }
    }
    
    for i in dic {
        if i.value.count < k { // 키의 배열의 카운트가 k보다 크면
            continue
        }
        for j in i.value { // 해당 아이디 index에 맞는 값 += 1
            let index = id_list.firstIndex(of: String(j))
            result[index!] = result[index!] + 1
        }
    }
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
