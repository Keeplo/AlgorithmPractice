//
//  main.swift
//  AddingPosition
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 자릿수 더하기
// https://programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var answer:Int = {where: }

    while(num>0) {
        if(num/10 == 0) {
            answer += num
            num = 0
            break
        } else {
            answer += (num%10)
            num /= 10
        }
    }
    
    return answer
}

let str = Int(readLine()!)

print(solution(str!))
