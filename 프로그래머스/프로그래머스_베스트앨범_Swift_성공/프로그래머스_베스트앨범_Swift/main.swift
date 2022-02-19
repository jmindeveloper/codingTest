//
//  main.swift
//  프로그래머스_베스트앨범_Swift
//
//  Created by J_Min on 2022/02/19.
//

import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    
    var dic = [String: [(Int, Int)]]()
    var genreSum = [(String, Int)]()
    var result = [Int]()
    
    // dic으로 장르별 플레이수 정리
    for i in 0..<genres.count {
        if dic[genres[i]] == nil {
            dic[genres[i]] = [(plays[i], i)]
        } else {
            dic[genres[i]]?.append((plays[i], i))
        }
    }
    
    // 장르별 플레이수 내림차순 정렬 및
    // 장르별 총 합 플레이수 튜플로 정리
    for key in dic.keys {
        dic[key] = dic[key]?.sorted { $0.0 > $1.0 }
        genreSum.append((key, dic[key]!.reduce(0, { (result, next) -> Int in
            return result + next.0
        })))
    }
    // 장르별 총 합 플레이수 내림차순으로 정렬
    genreSum.sort { $0.1 > $1.1 }
    
    // 총 합 플레이수가 큰것부터 탐색
    for key in genreSum {
        var count = 0
        var playLists = [(Int, Int)]()
        // 플레이수가 큰것부터 2개까지만 playLists에 저장
        for song in dic[key.0]! {
            playLists.append(song)
            count += 1
            if count == 2 {
                break
            }
        }
        
        // playLists의 count가 2개 이상이고 플레이수가 같다면 오름차순으로 정렬
        if playLists.count > 1 && playLists[0].0 == playLists[1].0 {
            playLists.sort { $0.1 < $1.1}
        }
        
        // playLists의 고유번호 result에 저장
        for playList in playLists {
            result.append(playList.1)
        }
        playLists = []
    }
    
    return result
}

print(solution(["classic", "pop", "classic", "classic", "pop", "aaaa"], [500, 500, 500, 500, 600, 4000]))
