//
//  main.swift
//  BestAlbum
//
//  Created by Yongwoo Marco on 2021/02/17.
//

// 베스트 앨범 (해시, lv 3)

// https://programmers.co.kr/learn/courses/30/lessons/42579
// https://keeplo.tistory.com/182

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var numbering = 0, result = [Int](), playsSum = [String:Int](), numGenre = [Int:String]()
    
    while numbering < genres.count {
        if playsSum.keys.contains(genres[numbering]) {
            playsSum[genres[numbering]]! += plays[numbering]
        } else {
            playsSum.updateValue(plays[numbering], forKey: genres[numbering])
        }
        
        numGenre.updateValue(genres[numbering], forKey: numbering)
        numbering += 1
    }
            
    let queue = playsSum.sorted{ $0.1 > $1.1 }.map{$0.key}
        
    for genre in queue {
        var numbers = numGenre.filter{ $0.value == genre }.keys.sorted(by: <)
        var numbersPlays = numbers.map{ plays[$0] }
        var addCount = 0

        while numbers.count > 0, addCount < 2 {
            let max = numbersPlays.max()!
            let index = numbersPlays.firstIndex(of: max)!

            result.append(numbers[index])

            numbers.remove(at: index)
            numbersPlays.remove(at: index)

            addCount += 1
        }
    }
    
    return result
}

let genres = ["classic", "pop", "classic", "classic", "pop", "hiphop", "hiphop"]
let plays =  [500, 600, 150, 800, 2500, 2500, 2500]

print(solution(genres, plays))
