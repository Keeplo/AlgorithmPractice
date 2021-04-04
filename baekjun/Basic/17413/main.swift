//
//  main.swift
//  17413
//
//  Created by Yongwoo Marco on 2021/04/04.
//

// 단어 뒤집기 2 17413

// https://www.acmicpc.net/problem/17413

import Foundation

let str = readLine()!
var strs = [String](), isTag = false, temp = ""

for c in str {
    let s = String(c)
    
    if s == "<" {
        if isTag {
            strs.append(temp)
        } else {
            strs.append( temp.reversed().map({ String($0) }).joined() )
        }
        temp = ""
        
        temp.append(s)
    } else if s == ">" {
        temp.append(s)
        
        if isTag {
            strs.append(temp)
        } else {
            strs.append( temp.reversed().map({ String($0) }).joined() )
        }
        temp = ""
    } else if s == " " {
        if !isTag {
            strs.append( temp.reversed().map({ String($0) }).joined() + " " )
            temp = ""
        } else {
            temp.append(s)
        }
    } else {
        temp.append(s)
    }
    
    if s == "<" {
        isTag = true
    } else if s == ">" {
        isTag = false
    }
}

if !temp.isEmpty {
    strs.append( temp.reversed().map({ String($0) }).joined() + " " )
}

print(strs.joined())



