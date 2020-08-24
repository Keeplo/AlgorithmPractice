//
//  main.swift
//  DescendingString
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 문자열 내림차순으로 배치하기

// https://programmers.co.kr/learn/courses/30/lessons/12917

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    s.sorted(by: >).map({ result.append($0) })
    return result
}

let str = readLine()!

print(solution(str))
