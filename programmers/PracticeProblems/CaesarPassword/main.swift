//
//  main.swift
//  CaesarPassword
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 시저 암호

// https://programmers.co.kr/learn/courses/30/lessons/12926
// https://keeplo.tistory.com/103

import Foundation

/*
func solution(_ s:String, _ n:Int) -> String {
    var str = ""
    
    let a:UInt8 = 65
    let z:UInt8 = 90
    let A:UInt8 = 97
    let Z:UInt8 = 122
    
    for c in s {
        if(c == " ") {
            str.append(c)
        } else {
            let char = Character(extendedGraphemeClusterLiteral: c)
            var sum = char.asciiValue! + UInt8(n)
            
            if(char.asciiValue! <= z && sum > z) {
                sum = (a-1) + (sum-z)
            } else if(char.asciiValue! >= A && sum>Z)  {
                sum = (A-1) + (sum-Z)
            }
            
            str.append( Character(UnicodeScalar(sum)) )
        }
    }
    return str
}
*/

func solution(_ s:String, _ n:Int) -> String {
    var str = ""
    
    let ascii = (a: UInt8(65), z: UInt8(90), A: UInt8(97), Z: UInt8(122))
    
    for c in s {
        if(c == " ") {
            str.append(c)
        } else {
            let char = Character(extendedGraphemeClusterLiteral: c)
            var sum = char.asciiValue! + UInt8(n)
            
            if(char.asciiValue! <= ascii.z && sum > ascii.z) {
                sum = (ascii.a-1) + (sum-ascii.z)
            } else if(char.asciiValue! >= ascii.A && sum>ascii.Z)  {
                sum = (ascii.A-1) + (sum-ascii.Z)
            }
            
            str.append( Character(UnicodeScalar(sum)) )
        }
    }
    return str
}

let str = readLine()
let n = Int(readLine()!)

print(solution(str!, n!))

