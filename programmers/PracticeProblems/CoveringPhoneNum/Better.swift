//
//  Better.swift
//  CoveringPhoneNum
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}

func solution(_ phone_number:String) -> String {
    guard phone_number.count > 4 else { return phone_number }
    return String(phone_number.enumerated().map{($0.offset<phone_number.count-4 ? Character("*") : $0.element)})
}

