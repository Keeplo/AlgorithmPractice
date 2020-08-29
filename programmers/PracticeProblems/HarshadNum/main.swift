//
//  main.swift
//  HarshadNum
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 히샤드 수

// https://programmers.co.kr/learn/courses/30/lessons/12947

import Foundation

func solution(_ x:Int) -> Bool {
    return x%String(x).map({ Int(String($0)) }).reduce(0){ $0+$1! } == 0
}

// String(x).reduce(0){ $0 + Int(String($1))! }

let x = Int(readLine()!)

print(solution(x!))
  
