//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var primes:[Bool] = [Bool](repeating:false, count:n+1);
    var count = 0;
    
    for i in 2...n {
        if(!primes[i]){
            count = count + 1;
        }
        for j in 1...(n/i) {
            primes[i*j]=true;
        }
    }
    return count;
}
