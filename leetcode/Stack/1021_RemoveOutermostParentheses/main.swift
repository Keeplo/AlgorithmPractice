//
//  main.swift
//  1021_RemoveOutermostParentheses
//
//  Created by Yongwoo Marco on 2021/04/30.
//

// 21.04.30
// https://leetcode.com/problems/remove-outermost-parentheses/

class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var stack = [Character](), strs = [String](), temp = ""
        
        for c in S {
            if c == "(" {
                stack.append(c)
                temp.append(c)
            } else {
                stack.removeLast()
                temp.append(c)
            }
            
            if stack.isEmpty {
                strs.append(temp)
                print(temp)
                temp = ""
                
            }
        }
        
        return strs.map{ s -> String in
            if s.count < 3 {
                return ""
            } else {
                return String(s[s.index(after: s.startIndex)..<s.index(before: s.endIndex)])
            }
        }.joined()
    }
}

let s = Solution()

print(s.removeOuterParentheses("(()())(())"))
