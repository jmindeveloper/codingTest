//
//  main.swift
//  프로그래머스_오픈채팅방_Swift
//
//  Created by J_Min on 2021/11/28.
//

import Foundation

func solution(_ record: [String]) -> [String] {
    
    var names = [String: String]()
    var result = [String]()
    
    for i in record {
        let  arr = i.split(separator: " ")
        if arr.count > 2 {
            names[String(arr[1])] = String(arr[2])
        }
    }
    
    for i in record {
        let arr = i.split(separator: " ")
        let name = names[String(arr[1])]!
        
        if arr[0] == "Enter" {
            result.append("\(name)님이 들어왔습니다.")
        } else if arr[0] == "Leave" {
            result.append("\(name)님이 나갔습니다.")
        }
    }
    
    return result
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
