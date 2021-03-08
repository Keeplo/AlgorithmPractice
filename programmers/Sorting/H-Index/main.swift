//
//  main.swift
//  H-Index
//
//  Created by Yongwoo Marco on 2021/03/08.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// H-Index

// https://programmers.co.kr/learn/courses/30/lessons/42747
// 

import Foundation

func solution(_ citations:[Int]) -> Int {
    var hIndex = 0
        
    for h in 0...citations.count {
        if citations.filter({$0>=h}).count >= h {
            if hIndex < h {
                hIndex = h
            }
        }
    }
    
    return hIndex
}

//let citations = [3, 0, 6, 1, 5]    // 3
let citations = [6, 6, 6, 6, 6]
print(solution(citations))


// h번 이상 인용된 논문이 h편 이상
// 나머지 논문이 h번 이하 인용
// h의 최댓값이 이 과학자의 H-Index입니다.
