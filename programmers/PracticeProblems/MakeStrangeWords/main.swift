//
//  main.swift
//  MakeStrangeWords
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    let arr = s.components(separatedBy: " ")
    
    for s in arr {
        for i in 0...s.count-1 {
            let c = s[s.index(s.startIndex, offsetBy: i)]
            if((i+1)%2==1) { // 홀수번 째
                c.asciiValue! > UInt8(96) && c.asciiValue! < UInt8(123) ? result.append(c.uppercased()) : result.append(c)
            } else {         // 짝수번 째
                c.asciiValue! < UInt8(91) && c.asciiValue! > UInt8(64) ? result.append(c.lowercased()) : result.append(c)
            }
        }
        result.append(" ")
    }
    result.removeLast()
    
    return result
}

let str = readLine()!

print(solution(str))
