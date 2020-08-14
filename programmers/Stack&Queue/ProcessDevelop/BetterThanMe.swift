//
//  BetterThanMe.swift
//  Queue
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

/* 프로그래머스 김동욱님 풀이
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var cPriorities = priorities
    var targetIndex = location
    var seq = 0

    while cPriorities.count > 0 {
        if cPriorities.contains(where: { $0 > cPriorities[0] }) {
            let first = cPriorities.removeFirst()
            cPriorities.append(first)
            targetIndex = targetIndex - 1 < 0 ? cPriorities.count - 1 : targetIndex - 1
        } else {
            if(targetIndex == 0) {
                return priorities.count - cPriorities.count + 1
            }

            cPriorities.removeFirst()
            targetIndex = targetIndex - 1
        }
    }

    return 0
}
*/
