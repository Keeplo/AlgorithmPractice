//
//  main.swift
//  GcdAndLcm
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 최대공약수와 최소공배수

// https://programmers.co.kr/learn/courses/30/lessons/12940/solution_groups?language=swift

import Foundation

// 최대공약수
func GCD(_ min: Int, _ max: Int) -> Int {
    return min % max == 0 ? max : GCD(max, min % max)
}
// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [GCD(n, m), LCM(n, m)]
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })

print(solution(arr[0], arr[1]))  
