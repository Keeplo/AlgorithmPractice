//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({ array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]})
}
