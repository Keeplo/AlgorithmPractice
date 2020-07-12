//
//  main.swift
//  Day02
//
//  Created by Yongwoo Marco on 2020/07/12.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {


}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
