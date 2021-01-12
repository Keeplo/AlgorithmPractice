//
//  main.swift
//  PushKeypad
//
//  Created by Yongwoo Marco on 2021/01/12.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 키 패드 누르기

// https://programmers.co.kr/learn/courses/30/lessons/67256
// https://keeplo.tistory.com/166

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var myhands = (10, 12, hand, "")
    
    for i in numbers {
        myhands = (i == 0 ? compare(myhands, 11) : compare(myhands, i))
    }
    
    return myhands.3
}
func distance(_ from: Int, _ to: Int) -> Int {
    let keypad = [1:[0, 0], 2:[0, 1], 3:[0, 2],
                  4:[1, 0], 5:[1, 1], 6:[1, 2],
                  7:[2, 0], 8:[2, 1], 9:[2, 2],
                  10:[3, 0], 11:[3, 1], 12:[3,2]]
    
    let f = keypad[from]!
    let t = keypad[to]!
    
    return abs(f[0]-t[0])+abs(f[1]-t[1])
}
func compare(_ hands: (Int, Int, String, String), _ num: Int) -> (Int, Int, String, String) {
    if num == 1 || num == 4 || num == 7 {
        return (num, hands.1, hands.2, hands.3 + "L")
    } else if num == 3 || num == 6 || num == 9 {
        return (hands.0, num, hands.2, hands.3 + "R")
    } else {
        let l = distance(hands.0, num)
        let r = distance(hands.1, num)
        
        if l == r {
            if hands.2 == "right" {
                return (hands.0, num, hands.2, hands.3 + "R")
            } else {
                return (num, hands.1, hands.2, hands.3 + "L")
            }
        } else if l > r {
            return (hands.0, num, hands.2, hands.3 + "R")
        } else {
            return (num, hands.1, hands.2, hands.3 + "L")
        }
    }
}

let numbers = [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]
let hand = "right"

print(solution(numbers, hand))

//let numbers = [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2]
//let hand = "left"
//
//let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
//let hand = "right"
