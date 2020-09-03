//
//  main.swift
//  20.09.03.Lv2
//
//  Created by Yongwoo Marco on 2020/09/03.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 1
    var people = n
    var A = a
    var B = b
    while(people != 1) {
        if( (A+1)/2 == (B+1)/2 ) {
            return answer
        } else {
            people /= 2
            A = (A+1)/2
            B = (B+1)/2
        }
        answer += 1
    }
    return -1
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0) })

print(solution(arr[0]!, arr[1]!, arr[2]!))
