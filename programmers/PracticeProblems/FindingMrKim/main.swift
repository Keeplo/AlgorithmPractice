//
//  main.swift
//  FindingMrKim
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 서울에서 김서방 찾기

// https://programmers.co.kr/learn/courses/30/lessons/12919
// https://keeplo.tistory.com/107

import Foundation

func solution(_ seoul:[String]) -> String {
    
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}

let arr = readLine()!.components(separatedBy: " ")

print(solution(arr))

/*
 func solution(_ seoul:[String]) -> String {
     return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
 }
 */
