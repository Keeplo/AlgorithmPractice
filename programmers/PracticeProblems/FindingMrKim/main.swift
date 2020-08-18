//
//  main.swift
//  FindingMrKim
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

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
