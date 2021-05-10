//
//  main.swift
//  알고리즘기초1/2_201
//
//  Created by Yongwoo Marco on 2021/05/10.
//

// 17413 단어 뒤집기2
//let str = readLine()!
//var strs = [String](), isTag = false, temp = ""
//
//for c in str {
//    let s = String(c)
//
//    if s == "<" {
//        if isTag {
//            strs.append(temp)
//        } else {
//            strs.append( temp.reversed().map({ String($0) }).joined() )
//        }
//        temp = ""
//
//        temp.append(s)
//    } else if s == ">" {
//        temp.append(s)
//
//        if isTag {
//            strs.append(temp)
//        } else {
//            strs.append( temp.reversed().map({ String($0) }).joined() )
//        }
//        temp = ""
//    } else if s == " " {
//        if !isTag {
//            strs.append( temp.reversed().map({ String($0) }).joined() + " " )
//            temp = ""
//        } else {
//            temp.append(s)
//        }
//    } else {
//        temp.append(s)
//    }
//
//    if s == "<" {
//        isTag = true
//    } else if s == ">" {
//        isTag = false
//    }
//}
//
//if !temp.isEmpty {
//    strs.append( temp.reversed().map({ String($0) }).joined() + " " )
//}
//
//print(strs.joined())

// 10799 쇠막대기 swift


