//
//  main.swift
//  JadenCase
//
//  Created by Yongwoo Marco on 2020/09/19.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// JadenCase 문자열 만들기

// https://programmers.co.kr/learn/courses/30/lessons/12951

//

import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map({ $0.isEmpty ? $0 :
        ( $0[$0.startIndex].isLetter ?
            $0[$0.startIndex].uppercased()+$0[$0.index(after: $0.startIndex)..<$0.index($0.startIndex, offsetBy: $0.count) ].lowercased() : $0
        )
    }).joined(separator: " ")
}

let str = "for      the last       week"
//let str = "3people unFollowed me"
//let str = "for the last week"

print(solution(str))
