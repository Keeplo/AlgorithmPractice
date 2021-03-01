//
//  main.swift
//  WordChainGame
//
//  Created by Yongwoo Marco on 2021/02/20.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 영어 끝말잇기 (Summer/Winter Coding ~2018) Lv 2

// https://programmers.co.kr/learn/courses/30/lessons/12981
// https://keeplo.tistory.com/193

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var round = 1, check = [String]()
    
    for now in words {
        print("round \(round) Round \( (round-1)/n + 1 )")
        if check.isEmpty {
            check.append(now)
        } else {
            if check.contains(now) {
                return [(check.count+1) % n == 0 ? n : (check.count+1) % n, (round-1)/n + 1]
            } else {
                if check.last!.last! == now.first! {
                    check.append(now)
                } else {
                    return [(check.count+1) % n == 0 ? n : (check.count+1) % n, (round-1)/n + 1]
                }
            }
        }
        round += 1
    }
    
    return [0, 0]
}

let n = 3
let words = ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"] // [3,3]
//let n = 5
//let words = ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"] // [0,0]
//let n = 2
//let words = ["hello", "one", "even", "never", "now", "world", "draw"] // [1,3]

print(solution(n, words))
