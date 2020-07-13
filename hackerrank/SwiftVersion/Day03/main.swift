//
//  main.swift
//  Day03
//
//  Created by Yongwoo Marco on 2020/07/13.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

if(N%2==0) {                // even
    if(N>20) {              // > 20
        print("Not Weird")
    } else {                // <= 20
        if(N>=2 && N<=5) {  // 2<= N <=5
            print("Not Weird")
        } else {            // 6<= N <=20
            print("Weird")
        }
    }
} else {                    // odd
    print("Weird")
}

