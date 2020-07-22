//
//  main.swift
//  Day12
//
//  Created by Yongwoo Marco on 2020/07/22.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

// Class Student
class Student: Person {
    var testScores: [Int]

    /*
    *   Initializer
    *
    *   Parameters:
    *   firstName - A string denoting the Person's first name.
    *   lastName - A string denoting the Person's last name.
    *   id - An integer denoting the Person's ID number.
    *   scores - An array of integers denoting the Person's test scores.
    */
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    /*
    *   Method Name: calculate
    *   Return: A character denoting the grade.
    */
    // Write your method here
    func calculate() -> Character {
        var avarage = 0
        for a in scores {
            avarage += a
        }
        avarage = avarage/scores.count
        
        if(avarage>=90) {
            return "O"
        } else if(avarage>=80) {
            return "E"
        } else if(avarage>=70) {
            return "A"
        } else if(avarage>=55) {
            return "P"
        } else if(avarage>=40) {
            return "D"
        } else if(avarage<40) {
            return "T"
        } else {
            return "X"
        }
    }
} // End of class Student

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
