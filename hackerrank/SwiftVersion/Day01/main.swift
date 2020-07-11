//
//  main.swift
//  Day01
//
//  Created by Yongwoo Marco on 2020/07/11.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.

// Read and save an integer, double, and String to your variables.
var inputInteger = readLine()
var inputDouble = readLine()
var inputString = readLine()


if let a = inputInteger {
    i += Int(a)!
}
if let b = inputDouble {
    d += Double(b)!
}
if let c : String = inputString {
    s += c;
}
// Print the sum of both integer variables on a new line.
print(i)
// Print the sum of the double variables on a new line.
print(d)
// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(s)
