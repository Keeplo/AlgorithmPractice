//
//  main.swift
//  year2016
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 2016년

// https://programmers.co.kr/learn/courses/30/lessons/12901

// https://keeplo.tistory.com/116

import Foundation

/*
func solution(_ a:Int, _ b:Int) -> String {
    let days = ["SUN", "MON", "TUE", "WED", "THU", "FRI" , "SAT"]
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var monthsDays = 0
    
    for i in 0..<a-1 {
        monthsDays += months[i]
    }
    
    let index = (5 + monthsDays + b-1)%7
    
    return days[index]
}
 */
func solution(_ a:Int, _ b:Int) -> String {
    let days = ["SUN", "MON", "TUE", "WED", "THU", "FRI" , "SAT"]
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    return days[ (5 + months[0..<a-1].reduce(0, +) + b-1 )%7 ]
}

let months = Int(readLine()!)
let days = Int(readLine()!)

print(solution(months!, days!))

