//
//  main.swift
//  Day14
//
//  Created by Yongwoo Marco on 2020/07/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    init(a: [Int]) {
        self.elements = a
        maximumDifference = 0
    }
    
    func computeDifference() {
        for i in 0..<elements.count {
            for j in 1..<elements.count {
                var tmp = elements[i]-elements[j]
                if(tmp<0) { tmp = tmp*(-1) }
                
                if(maximumDifference<tmp) { maximumDifference = tmp }
            }
        }
    }
} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
