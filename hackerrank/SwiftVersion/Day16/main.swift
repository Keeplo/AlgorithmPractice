//
//  main.swift
//  Day16
//
//  Created by Yongwoo Marco on 2020/07/26.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


// * Define an ErrorType
enum StringToIntTypecastingError: Error {
    case BadString
}

// * If typecasting is not possible, throw exception, otherwise return the Integer value
func stringToInt(inputString: String) throws -> Int {
    guard let integerStr = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return integerStr
}

// * Read the input
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
