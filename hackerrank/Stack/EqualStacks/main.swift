//
//  main.swift
//  EqualStacks
//
//  Created by Yongwoo Marco on 2021/05/06.
//

// Equal Stacks
// https://www.hackerrank.com/challenges/equal-stacks/problem

import Foundation

func equalStacks(h1: [Int], h2: [Int], h3: [Int]) -> Int {
    var s1 = h1, s2 = h2, s3 = h3
    var height1 = h1.reduce(0, +), height2 = h2.reduce(0, +), height3 = h3.reduce(0, +)
    
    while height1 != height2 || height2 != height3 {
        if (height1 > height2), (height1 > height3) {
            height1 -= s1.removeFirst()
        } else if (height2 > height1), (height2 > height3) {
            height2 -= s2.removeFirst()
        } else if (height3 > height1), (height3 > height2) {
            height3 -= s3.removeFirst()
        }
    }
    
    return height1
}

let h1 = [3, 2, 1, 1, 1]
let h2 = [4, 3, 2]
let h3 = [1, 1, 4, 1]

print(equalStacks(h1: h1, h2: h2, h3: h3))
