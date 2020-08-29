//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}

func solution(_ strings:[String], _ n:Int) -> [String] {
    let answer: [String] = strings.sorted {
        let left: Character = $0[$0.index($0.startIndex, offsetBy: n)]
        let right: Character = $1[$1.index($1.startIndex, offsetBy: n)]

        if left == right {
            return $0 < $1
        } else {
            return left < right
        }
    }

    return answer
}
