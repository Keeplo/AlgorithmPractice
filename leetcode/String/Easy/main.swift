//
//  main.swift
//  Easy
//
//  Created by Yongwoo Marco on 2021/05/21.
//

import Foundation

// 1678. Goal Parser Interpretation
//func interpret(_ command: String) -> String {
//    var stack = [String](), temp = [String](), result = [String]()
//
//    for c in command {
//        let s = String(c)
//
//        if s == "(" {
//            stack.append(s)
//        } else if s == ")" {
//            if temp.isEmpty {
//                result.append("o")
//            } else {
//                result.append(temp.joined())
//                temp.removeAll()
//            }
//            stack.removeAll()
//        } else {
//            if stack.isEmpty {
//                result.append(s)
//            } else {
//                temp.append(s)
//            }
//        }
//    }
//    return result.joined()
//}
//print(interpret("G()(al)"))         // "Goal"
//print(interpret("G()()()()(al)"))   // "Gooooal"
//print(interpret("(al)G(al)()()G"))  // "alGalooG"

// 1221. Split a String in Balanced Strings
func balancedStringSplit(_ s: String) -> Int {
    var stack = [String](), checker = [String](), result = [String]()
    
    
    
    return stack.isEmpty ? result.count : result.count + 1
}
print(balancedStringSplit("RLRRLLRLRL"))    // 4
print(balancedStringSplit("RLLLLRRRLR"))    // 3
print(balancedStringSplit("LLLLRRRR"))      // 1
print(balancedStringSplit("RLRRRLLRLL"))    // 2
