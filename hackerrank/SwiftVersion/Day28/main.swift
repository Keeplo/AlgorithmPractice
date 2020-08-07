//
//  main.swift
//  Day28
//
//  Created by Yongwoo Marco on 2020/08/07.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var resultNames = [String]()

for _ in 1...N {
    guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }

    let firstName = firstNameEmailID[0]
    let emailID = firstNameEmailID[1]
    
    
    if(emailID.range(of: "@gmail.com") != nil) {
        resultNames.append(firstName)
    }
}

resultNames.sort();
for name in resultNames {
    print(name)
}

