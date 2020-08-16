//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// 1.
/*
func solution(_ n:Int) -> Int
{
    return String(n).reduce(0, {$0+Int(String($1))!});
}
*/

// 2.
/*
func solution(_ n:Int) -> Int {
    var answer:Int = 0

    for i in String(n) {
        answer += Int(String(i))!
    }

    return answer
}
 */
