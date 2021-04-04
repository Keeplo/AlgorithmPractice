//
//  main.swift
//  9093
//
//  Created by Yongwoo Marco on 2021/04/04.
//

import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
    let str = readLine()!.components(separatedBy: " ")
    
    _ = str.map({ print($0.reversed()+" ", terminator: "") })
}
