//
//  main.swift
//  CoveringPhoneNum
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 핸드폰 번호 가리기

// https://programmers.co.kr/learn/courses/30/lessons/12948

import Foundation

func solution(_ phone_number:String) -> String {
    var result = ""
    for i in 0..<phone_number.count {
        i<phone_number.count-4 ? result.append("*") : result.append(phone_number[phone_number.index(phone_number.startIndex, offsetBy: i)])
    }
    return result
}

let str = readLine()!

print(solution(str))
