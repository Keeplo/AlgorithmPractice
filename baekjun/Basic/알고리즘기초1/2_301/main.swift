//
//  main.swift
//  알고리즘기초1/2_301
//
//  Created by Yongwoo Marco on 2021/05/10.
//

// 17103 골드바흐 파티션
import Foundation

let n = Int(readLine()!)!
var sums = [Int](), primes = [Int:Bool]()

for _ in 0..<n {
    sums.append(Int(readLine()!)!)
}

func isPrime(num: Int) -> Bool {
    if let b = primes[num] {
        return b
    } else {
        if(num<4) {
            if num == 1 {
                primes.updateValue(false, forKey: num)
                return false
            } else {
                primes.updateValue(true, forKey: num)
                return true
            }
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) {
                primes.updateValue(false, forKey: num)
                return false
            }
        }
        primes.updateValue(true, forKey: num)
        return true
    }
}


_ = sums.map({ num in
    var count = 0, i = 3

    while i <= num/2 {
        if isPrime(num: i) {
            if i == num/2 || isPrime(num: num-i) {
                count += 1
            }
        }
        i += 2
    }
    
    print(count)
})
