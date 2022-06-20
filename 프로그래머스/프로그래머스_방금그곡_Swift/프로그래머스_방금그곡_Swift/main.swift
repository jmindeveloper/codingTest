//
//  main.swift
//  프로그래머스_방금그곡_Swift
//
//  Created by J_Min on 2022/06/20.
//

import Foundation

func getAllTimeMusic(_ time: Int, _ music: String) -> String {
    var allMusic = ""
    for _ in 0..<time / music.count {
        allMusic += music
    }
    let endIndex = music.index(music.startIndex, offsetBy: time - allMusic.count)
    let range = ..<endIndex
    allMusic += music[range]
    return allMusic
}

func changeMinutes(_ time: String) -> String {
    let time = time.split(separator: ":").map { Int(String($0))! }
    return String(time[0] * 60 + time[1])
}

func solution(_ m:String, _ musicInfos:[String]) -> String {
    var m = m
    m = m.replacingOccurrences(of: "A#", with: "Y")
    m = m.replacingOccurrences(of: "C#", with: "P")
    m = m.replacingOccurrences(of: "D#", with: "O")
    m = m.replacingOccurrences(of: "F#", with: "I")
    m = m.replacingOccurrences(of: "G#", with: "U")
    
    
    let songArr = musicInfos.map { musicInfo -> [String] in
        var musicInfo = musicInfo
        musicInfo = musicInfo.replacingOccurrences(of: "A#", with: "Y")
        musicInfo = musicInfo.replacingOccurrences(of: "C#", with: "P")
        musicInfo = musicInfo.replacingOccurrences(of: "D#", with: "O")
        musicInfo = musicInfo.replacingOccurrences(of: "F#", with: "I")
        musicInfo = musicInfo.replacingOccurrences(of: "G#", with: "U")
        let a = musicInfo.split(separator: ",").map { String($0) }

        let startTime = changeMinutes(a[0])
        let finishTime = changeMinutes(a[1])
        let timeDifference = Int(finishTime)! - Int(startTime)!
        let musicName = a[2]
        let music = getAllTimeMusic(timeDifference, a[3])
        
        return [String(timeDifference), startTime, musicName, music]
    }
    var songFilterArr = songArr.filter {
        $0[3].contains(m)
    }
    
    if songFilterArr.isEmpty {
        return "(None)"
    }
    
    songFilterArr.sort {
        $0[0] != $1[0] ?
        Int($0[0])! > Int($1[0])! :
        Int($0[1])! < Int($1[1])!
    }
    return songFilterArr.first![2]
}

print(solution("CC#BCC#BCC#BCC#B", ["03:00,03:30,FOO,CC#B", "04:00,04:08,BAR,CC#BCC#BCC#B"]))
