//
//  main.swift
//  RemoveInPairs
//
//  Created by Yongwoo Marco on 2021/02/18.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 짝지어 제거하기 (2017 팁스타운 Lv2)

// https://programmers.co.kr/learn/courses/30/lessons/12973
// https://keeplo.tistory.com/183

import Foundation

func solution(_ s:String) -> Int{
    var stack = [String.Element]()
    
    for i in s {
        if stack.count > 0, stack.last == i {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    
    print(stack)
    
    return stack.count > 0 ? 0 : 1
}
//func solution(_ s:String) -> Int{
//    var m = s.map{ String($0) }, tmp = 0
//
//    print(m)
//
//    if m.count%2 == 1 {
//        return 1
//    }
//
//    while m.count > 0 {
//        for i in tmp..<m.count-1 {
//            print("m \(m) / i \(i) / tmp \(tmp)")
//            if m[i] == m[i+1] {
//                m.remove(at: i)
//                m.remove(at: i)
//                if i > 0 {
//                    tmp = i-1
//                }
//                break
//            } else if i == m.count-2{
//                return m.count>0 ? 0 : 1
//            }
//        }
//    }
//
//    print("last: \(m)")
//
//    return m.count>0 ? 0 : 1
//}

let s = "baabaa"
//let s = "cdcd"

print(solution(s))
