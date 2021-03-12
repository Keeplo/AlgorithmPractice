//
//  main.swift
//  OddAndEven
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 짝수와 홀수

// https://programmers.co.kr/learn/courses/30/lessons/12937
// https://keeplo.tistory.com/95

import Foundation

func solution(_ num:Int) -> String {
    return num%2 == 0 ? "Even" : "Odd"
}

let num = Int(readLine()!)

print(solution(num!))
