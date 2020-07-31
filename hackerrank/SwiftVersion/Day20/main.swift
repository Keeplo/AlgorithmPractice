//
//  main.swift
//  Day20
//
//  Created by Yongwoo Marco on 2020/07/30.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var numberOfSwaps = 0
for _ in 0..<n {
    for j in 0..<n-1 {
        if(arr[j]>arr[j+1]) {
            arr.swapAt(j, j+1)
            numberOfSwaps += 1
        }
    }
    if(numberOfSwaps == 0) {
        break
    }
}

print("Array is sorted in \(numberOfSwaps) swaps.")
print("First Element: \(arr[0])")
print("Last Element: \(arr[arr.count-1])")

