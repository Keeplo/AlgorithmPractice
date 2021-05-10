//
//  main.swift
//  알고리즘기초1/2_300
//
//  Created by Yongwoo Marco on 2021/05/10.
//

// 10430 나머지
//let nums = readLine()!.split(separator: " ").map({ Int($0)! })
//
//print( (nums[0]+nums[1])%nums[2] )
//print( ((nums[0]%nums[2]) + (nums[1]%nums[2]))%nums[2] )
//print( (nums[0]*nums[1])%nums[2] )
//print( ((nums[0]%nums[2]) * (nums[1]%nums[2]))%nums[2] )

// 2004 조합 0의 개수 - 런타임
var two = 0, five = 0

let nums = readLine()!.split(separator: " ").map({ UInt32($0)! })

func divideFive(n: UInt32) -> UInt32 {
    var count: UInt32 = 0, i: UInt32 = 5
    
    while i <= n {
        count += n/i
        i *= 5
    }
    
    return count
}

func divideTwo(n: UInt32) -> UInt32 {
    var count: UInt32 = 0, i: UInt32 = 2
    
    while i <= n {
        count += n/i
        i *= 2
    }
    
    return count
}

print( min(divideFive(n: nums[0]) - divideFive(n: nums[1]) - divideFive(n: nums[0]-nums[1]), divideTwo(n: nums[0] - divideTwo(n: nums[1]) - divideTwo(n: nums[0]-nums[1]))) )
