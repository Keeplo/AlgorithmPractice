//
//  main.swift
//  Day21
//
//  Created by Yongwoo Marco on 2020/07/31.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

struct Printer<T> {
    /**
    *    Name: printArray
    *    Print each element of the generic array on a new line. Do not return anything.
    *    @param A generic array
    **/
    
    // Write your code here
    func printArray(array: Array<Any>) {
        for i in 0..<array.count {
            print(array[i])
        }
    }
}


var n = Int(readLine()!)!
var intArray = Array(repeating: 0, count: n);
for i in 0...n - 1 {
    intArray[i] = Int(readLine()!)!;
}

n = Int(readLine()!)!
var stringArray = Array(repeating: "", count: n);
for i in 0...n - 1 {
    stringArray[i] = readLine()!;
}

Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)
