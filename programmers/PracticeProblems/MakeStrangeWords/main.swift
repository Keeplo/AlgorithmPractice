//
//  main.swift
//  MakeStrangeWords
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 이상한 문자 만들기

//https://programmers.co.kr/learn/courses/30/lessons/12930

//

import Foundation

/*
func solution(_ s:String) -> String {
    var result = ""
    let arr = s.components(separatedBy: " ")
    
    for s in arr {
        for i in 0..<s.count {
            let c = s[s.index(s.startIndex, offsetBy: i)]
            if(i%2 == 1) {    // 1 3 5 대문자
                //c.asciiValue! < UInt8(91) ? result.append(c.lowercased()) : result.append(c)
                result.append(c.lowercased())
            } else {          // 0 2 4 소문자
                //c.asciiValue! > UInt8(96) ? result.append(c.uppercased()) : result.append(c)
                result.append(c.uppercased())
            }
        }
        result.append(" ")
    }
    result.removeLast()
    
    return result
}
 */

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ")
    var result = ""
    for s in arr {
        for i in s.enumerated() {
            print(Int(i.offset)%2)
            Int(i.offset)%2 == 1 ? result.append(i.element.lowercased()) : result.append(i.element.uppercased())
        }
        result.append(" ")
    }
    result.removeLast()
    return result
}

let str = readLine()!

print(solution(str))
