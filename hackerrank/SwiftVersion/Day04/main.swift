//
//  main.swift
//  Day04
//
//  Created by Yongwoo Marco on 2020/07/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

class Person {
    var age: Int = 0

    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if(initialAge<0) {
            self.age = 0
            print("Age is not valid, setting age to 0.")
        } else {
            self.age = initialAge
        }
    }

    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        if(age<13) {
            print("You are young.")
        } else if(age<18) {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
    }

    func yearPasses() {
        // Increment the age of the person in here
        age += 1;
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)

    p.amIOld()

    for i in 1...3 {
        p.yearPasses()
    }

    p.amIOld()

    print("")
}
