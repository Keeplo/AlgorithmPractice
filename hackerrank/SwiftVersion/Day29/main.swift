//
//  main.swift
//  Day29
//
//  Created by Yongwoo Marco on 2020/08/08.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation



guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var result = [Int]()

for _ in 1...t {
    guard let nkTemp = readLine() else { fatalError("Bad input") }
    let nk = nkTemp.split(separator: " ").map{ String($0) }

    guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

    guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }
    
    var max = 0
    
    for A in 1..<n {
        for B in (A+1)...n {
            if(A&B < k) {
                if(A&B > max) {
                    max = (A&B)
                }
            }
        }
    }
    
    result.append(max)
}

for data in result {
    print(data)
}
