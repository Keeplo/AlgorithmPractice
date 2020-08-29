//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}

func solution(_ n:Int) -> String {
    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
}
