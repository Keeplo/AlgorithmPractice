//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    guard let _: Int = Int(s), (s.count == 4 || s.count == 6) else {
        return false
    }
    return true
}

func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
