//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}
