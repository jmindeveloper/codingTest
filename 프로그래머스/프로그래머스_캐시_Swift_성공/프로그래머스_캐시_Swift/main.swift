//
//  main.swift
//  프로그래머스_캐시_Swift
//
//  Created by J_Min on 2022/06/21.
//

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 {
        return cities.count * 5
    }
    var cache = Array(repeating: "", count: cacheSize)
    var result = 0
    
    for i in cities {
        let city = i.lowercased()
        if cache.contains(city) {
            let index = cache.firstIndex(of: city)!
            cache.remove(at: index)
            cache.append(city)
            result += 1
        } else {
            cache.removeFirst()
            cache.append(city)
            result += 5
        }
    }
    
    return result
}

print(solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"]))
