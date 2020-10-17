//
//  Better.swift
//  PracticeProblemsLv2
//
//  Created by Yongwoo Marco on 2020/09/05.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var B = B.sorted(by: >)
    return A.sorted(by: <)
        .enumerated()
        .reduce(into: 0) { $0 += ($1.element * B[$1.offset])}
}
