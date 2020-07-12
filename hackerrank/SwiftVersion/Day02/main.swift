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
    
    let tip : Double = Double(tip_percent) / 100 * meal_cost
    let tax : Double = Double(tax_percent) / 100 * meal_cost
    let totalCost = round( tip + tax + meal_cost )

    print(Int(totalCost))
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
