//
//  main.swift
//  Collatz
//
//  Created by Yongwoo Marco on 2020/09/04.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 콜라즈 추측

// https://programmers.co.kr/learn/courses/30/lessons/12943
// https://keeplo.tistory.com/93

import Foundation

func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    while(n != 1) {
        count += 1
        if(n%2==0) { n /= 2 }
        else { n = n*3 + 1 }
        
        if(count == 500) {
            count = -1
            break
        }
    }
        
    return count
}
