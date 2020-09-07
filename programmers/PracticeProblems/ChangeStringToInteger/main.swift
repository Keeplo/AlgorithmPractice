//
//  main.swift
//  ChangeStringToInteger
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 문자여을 정수로 바꾸기

// https://programmers.co.kr/learn/courses/30/lessons/12925

// https://keeplo.tistory.com/104

import Foundation

func solution(_ s:String) -> Int {
    return Int(s)!
}

let str = readLine()!

print(solution(str))
