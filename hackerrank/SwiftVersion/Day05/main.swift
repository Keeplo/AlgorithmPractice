//
//  main.swift
//  Day05
//
//  Created by Yongwoo Marco on 2020/07/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for i in 1...10 {
    print("\(n) x \(i) = \(n*i)")
}
