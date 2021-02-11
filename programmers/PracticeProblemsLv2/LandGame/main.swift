//
//  main.swift
//  LandGame
//
//  Created by Yongwoo Marco on 2021/02/10.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 땅따먹기

// https://programmers.co.kr/learn/courses/30/lessons/12913
// https://keeplo.tistory.com/179

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var varLand = land
    
    for i in 1..<varLand.count {
        varLand[i][0] += max(varLand[i-1][1], varLand[i-1][2], varLand[i-1][3])
        varLand[i][1] += max(varLand[i-1][0], varLand[i-1][2], varLand[i-1][3])
        varLand[i][2] += max(varLand[i-1][0], varLand[i-1][1], varLand[i-1][3])
        varLand[i][3] += max(varLand[i-1][0], varLand[i-1][1], varLand[i-1][2])
    }

    return varLand.last!.max()!
}

let land = [[1,2,3,5],[5,6,7,8],[4,3,2,1]]

print(solution(land))
