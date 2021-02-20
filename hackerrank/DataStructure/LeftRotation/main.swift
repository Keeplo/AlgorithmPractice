//
//  main.swift
//  LeftRotation
//
//  Created by Yongwoo Marco on 2021/02/20.
//

// Left Rotation

// https://www.hackerrank.com/challenges/array-left-rotation/problem

import Foundation

func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    var r = arr
    
    if r.count - d > d {
        for _ in 0..<d {
            r.append(r.remove(at: 0))
        }
    } else {
        for _ in 0..<(r.count - d) {
            r.insert(r.remove(at: r.count-1), at: 0)
        }
    }
    
    return r
}

let d = 4
let arr = [1, 2, 3, 4, 5]


print(rotateLeft(d: d, arr: arr))
