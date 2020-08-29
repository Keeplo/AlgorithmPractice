//
//  main.swift
//  PutStars
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 직사각형 별 찍기

// https://programmers.co.kr/learn/courses/30/lessons/12969

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    for _ in 0..<a {
        print("*", terminator: "")
    }
    print()
}
