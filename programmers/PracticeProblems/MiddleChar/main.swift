//
//  main.swift
//  MiddleChar
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 가운데 글자 가져오기

// https://programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    if(s.count%2==0) {
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2-1)])
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2)])
    } else {
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    return result
}

let str = readLine()!

print(solution(str))
