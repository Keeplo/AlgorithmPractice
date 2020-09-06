//
//  main.swift
//  AddingPosition
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 자릿수 더하기
// https://programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int {
    return String(n).reduce(0, {$0 + Int($1.hexDigitValue!)})
}

let str = Int(readLine()!)

print(solution(str!))
