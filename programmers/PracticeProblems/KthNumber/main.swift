//
//  main.swift
//  KthNumber
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for command in commands {
        let arr = array[command[0]-1...command[1]-1]
        let array = arr.sorted()
        let index = command[2]-1
            
        result.append(array[index])
    }
    
    return result
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })
let n = Int(readLine()!)

var commands = [[Int]]()

for _ in 0..<n! {
    let small = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    commands.append(small)
}

print(solution(arr, commands))
