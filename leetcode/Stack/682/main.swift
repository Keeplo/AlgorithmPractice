//
//  main.swift
//  682
//
//  Created by Yongwoo Marco on 2021/05/03.
//

// 21.05.03
// 682 Baseball Game
// https://leetcode.com/problems/baseball-game/

func calPoints(_ ops: [String]) -> Int {
    var result = [Int]()

    for s in ops {
        
        switch s {
        case "+":
            result.append(result[result.count - 2] + result.last!)
        case "C":
            result.removeLast()
        case "D":
            result.append(result.last! * 2)
        default:
            if let i = Int(s) {
                result.append(i)
            }
        }
    }
    return result.reduce(0, +)
}

let ops = ["5","2","C","D","+"]
//let ops = ["5","-2","4","C","D","9","+","+"]
//let ops = ["1"]

print(calPoints(ops))
