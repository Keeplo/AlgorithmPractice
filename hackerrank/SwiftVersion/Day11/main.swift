//
//  main.swift
//  Day11
//
//  Created by Yongwoo Marco on 2020/07/21.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    return arrRow
}

guard arr.count == 6 else { fatalError("Bad input") }

var max=0;

for i in 0..<4 {
    for j in 0..<4 {
        let tmp = arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
        if(max<tmp || i==0&&j==0 ) { max = tmp }
    }
}

print(max)
