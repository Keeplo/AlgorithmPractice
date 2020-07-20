//
//  main.swift
//  Day10
//
//  Created by Yongwoo Marco on 2020/07/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var num = n, answer = 0, checker = 0

while(num>0) {
    if(num%2==1) {
        checker += 1
    } else {
        if(checker>answer) {
            answer = checker
        }
        checker = 0
    }
    num /= 2
}
if(checker>answer) { answer = checker }

print(answer)
