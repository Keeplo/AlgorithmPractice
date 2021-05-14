//
//  main.swift
//  SumOfPlusNMinus
//
//  Created by Yongwoo Marco on 2021/05/14.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 음양 더하기

// https://programmers.co.kr/learn/courses/30/lessons/76501
// https://keeplo.tistory.com/228

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0

    for i in 0..<signs.count {
        result = signs[i] ? result + absolutes[i] : result - absolutes[i]
    }

    return result
}
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//    return (0..<signs.count).reduce(0){ $0 + (signs[$1] ? absolutes[$1] : -absolutes[$1]) }
//}
print(solution([4,7,12], [true,false,true]))
print(solution([1,2,3], [false,false,true]))
