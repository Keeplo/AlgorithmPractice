//
//  main.swift
//  Day06
//
//  Created by Yongwoo Marco on 2020/07/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    //fputs("string: " + string + "\n", stderr)
    var odd : String = "", even : String = ""
    for (index, value)  in string.enumerated() {
        if(index%2==0) {
            even += String(value)
        }
        else {
            odd += String(value)
        }
    }
    
    // Print a newline
    print(even+" "+odd)
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

