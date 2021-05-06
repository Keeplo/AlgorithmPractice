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
    var results = Set<Int>(), hs = [[Int]](), height = [[Int]]()

    hs.append( h1.reversed() )
    hs.append( h2.reversed() )
    hs.append( h3.reversed() )
    
    for h in hs {
        var arr = [Int]()
        _ = h.reduce(0){ a, b in
            results.insert( a+b )
            arr.append(a+b)
            
            return a + b
        }
        height.append(arr)
    }
    
    for h in results.sorted(by: >) {
        if height[0].contains(h), height[1].contains(h), height[2].contains(h) {
            return h
        }
    }
    
    return 0
}

let h1 = [3, 2, 1, 1, 1]
let h2 = [4, 3, 2]
let h3 = [1, 1, 4, 1]

print(equalStacks(h1: h1, h2: h2, h3: h3))
