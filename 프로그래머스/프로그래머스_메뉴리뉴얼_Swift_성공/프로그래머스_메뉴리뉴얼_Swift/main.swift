//
//  main.swift
//  프로그래머스_메뉴리뉴얼_Swift
//
//  Created by J_Min on 2022/06/24.
//

import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var allCourseArr = [String]()
    var courseArr = Set<String>()
    var result = [String]()
    
    func dfs(_ order: String, _ newCourse: String, _ count: Int) {
        if course.contains(newCourse.count) {
            courseArr.insert(String(newCourse.sorted()))
        }
        
        if count == order.count {
            return
        } else {
            let c = order[order.index(order.startIndex, offsetBy: count)]
            dfs(order, newCourse + String(c), count + 1)
            dfs(order, newCourse, count + 1)
        }
    }
    
    for order in orders {
        dfs(order, "", 0)
        allCourseArr.append(contentsOf: courseArr)
        courseArr.removeAll()
    }
    
    var dic = [String: Int]()
    for i in course {
        let c = allCourseArr.filter { $0.count == i }
        c.forEach { x in
            if dic[x] == nil {
                dic[x] = c.filter { $0 == x }.count
            }
        }
        let dicSorted = dic.sorted { $0.value > $1.value }
        guard let maxValue = dicSorted.first?.value else { continue }
        let bestCourse = dic.filter { $0.value == maxValue }
        for j in bestCourse {
            if j.value >= 2 {
                result.append(j.key)
            }
        }
        dic = [:]
    }
    
    return result.sorted()
}

print(solution(["ABCFG", "AC", "CDE", "ACDE", "BCFG", "ACDEH"], [2, 3, 4]))
