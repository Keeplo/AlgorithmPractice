//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


func solution(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}
