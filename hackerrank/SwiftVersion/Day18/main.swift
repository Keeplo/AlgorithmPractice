//
//  main.swift
//  Day18
//
//  Created by Yongwoo Marco on 2020/07/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

class Solution {
    var s = [Character]()
    var q = [Character]()
    
    func pushCharacter(ch: Character) {
        self.s.append(ch)
    }
    func enqueueCharacter(ch: Character) {
        self.q.append(ch)
    }
    func popCharacter() -> Character {
        let data = self.s[s.count-1]
        self.s.remove(at: self.s.count-1)
        return data
    }
    func dequeueCharacter() -> Character {
        let data = self.q[0]
        self.q.remove(at: 0)
        return data
    }
}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
