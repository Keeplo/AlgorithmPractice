//
//  main.swift
//  Easy
//
//  Created by Yongwoo Marco since 2021/05/11.
//

//MARK: --- 21.05.11
// 1108. Defanging an IP Address
//func defangIPaddr(_ address: String) -> String {
//    var defanged = address.split(separator: ".").map({ String($0) + "[.]" }).joined()
//    defanged.removeSubrange(defanged.lastIndex(of: "[")!..<defanged.endIndex)
//
//    return defanged
//}
//
//let address = "255.100.50.0"
//print(defangIPaddr(address))

// 1480. Running Sum of 1d Array
//func runningSum(_ nums: [Int]) -> [Int] {
//    var result = [Int]()
//    _ = nums.reduce(0){ a, b in
//        result.append(a+b)
//        return a+b
//    }
//    return result
//}

// 1431. Kids With the Greatest Number of Candies
//func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
//    return candies.map({ $0 + extraCandies >= candies.max()! ? true : false })
//}
//print(kidsWithCandies([2,3,5,1,3], 3))  // [true,true,true,false,true]
//print(kidsWithCandies([4,2,1,1,2], 1))  // [true,false,false,false,false]
//print(kidsWithCandies([12,1,12], 10))   // [true,false,true]

// 1672 Richest Customer Wealth
//func maximumWealth(_ accounts: [[Int]]) -> Int {
//    return accounts.map({ $0.reduce(0, +) }).max()!
//}
//print(maximumWealth([[1,2,3],[3,2,1]]))  // 6
//print(maximumWealth([[1,5],[7,3],[3,5]]))  // 10
//print(maximumWealth([[2,8,7],[7,1,3],[1,9,5]]))  // 17

// 1470. Shuffle the Array
//func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
//    var result = [Int]()
//
//    for i in 0..<nums.count/2 {
//        result.append(nums[i])
//        result.append(nums[i+n])
//    }
//
//    return result
//}
//
//print(shuffle([2,5,1,3,4,7], 3))    // [2,3,5,4,1,7]
//print(shuffle([1,2,3,4,4,3,2,1], 4))// [1,4,2,3,3,2,4,1]
//print(shuffle([1,1,2,2], 2))        // [1,2,1,2]

// 1512. Number of Good Pairs
//func numIdenticalPairs(_ nums: [Int]) -> Int {
//    var count = 0
//    for i in 0..<nums.count {
//        for j in i+1..<nums.count {
//            if nums[i] == nums[j] { count += 1 }
//        }
//    }
//    return count
//}
//print(numIdenticalPairs([1,2,3,1,1,3])) // 4
//print(numIdenticalPairs([1,1,1,1]))     // 6
//print(numIdenticalPairs([1,2,3]))       // 0

// 1365. How Many Numbers Are Smaller Than the Current Number
//func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
//    return nums.map({ n -> Int in
//        return nums.filter({ n > $0 }).count
//    })
//}
//print(smallerNumbersThanCurrent([8,1,2,2,3]))   // [4,0,1,1,3]
//print(smallerNumbersThanCurrent([6,5,4,8]))     // [2,1,0,3]
//print(smallerNumbersThanCurrent([7,7,7,7]))     // [0,0,0,0]
  
// 1313. Decompress Run-Length Encoded List
//func decompressRLElist(_ nums: [Int]) -> [Int] {
//    var result = [Int]()
//    for i in 0..<nums.count-1 {
//        if i%2 != 1 {
//            for _ in 0..<nums[i] {
//                result.append(nums[i+1])
//            }
//        }
//    }
//    return result
//}
//print(decompressRLElist([1,2,3,4])) // [2,4,4,4]
//print(decompressRLElist([1,1,2,3])) // [1,3,3]

// MARK: --- 21.05.12
// 1389. Create Target Array in the Given Order
//func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
//    var result = [Int]()
//    for i in 0..<nums.count {
//        result.insert(nums[i], at: index[i])
//    }
//    return result
//}
//print(createTargetArray([0,1,2,3,4], [0,1,2,2,1]))  // [0,4,1,3,2]
//print(createTargetArray([1,2,3,4,0], [0,1,2,3,0]))  // [0,1,2,3,4]
//print(createTargetArray([1], [0]))                  // [1]

// MARK: --- 21.05.13
// 1773. Count Items Matching a Rule
//func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
//    let ruleKeys = ["type":0, "color":1, "name":2]
//    return items.reduce(0){ $0 + ($1[ruleKeys[ruleKey]!] == ruleValue ? 1 : 0) }
//}
//print(countMatches([["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]], "color",  "silver"))
//print(countMatches([["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"]], "type", "phone"))

// 1486. XOR Operation in an Array
//func xorOperation(_ n: Int, _ start: Int) -> Int {
//    var arr = [Int](repeating: start, count: n)
//    for i in 0..<n {
//        arr[i] += i*2
//    }
//    return arr.reduce(0, ^)
//}
//print(xorOperation(5, 0)) // 8
//print(xorOperation(4, 3)) // 8
//print(xorOperation(1, 7)) // 7
//print(xorOperation(10, 5)) // 2

// 1854. Maximum Population Year
//func maximumPopulation(_ logs: [[Int]]) -> Int {
//    var mark = [Int](repeating: 0, count: 100)
//
//    _ = logs.map({ p in
//        for i in (p[0] - 1950)...(p[1] - 1950 - 1) {
//            mark[i] += 1
//        }
//    })
//
//    return 1950 + Int(mark.firstIndex(of: mark.max()!)!)
//}
//print(maximumPopulation([[1993,1999],[2000,2010]]))  // 1993
//print(maximumPopulation([[1950,1961],[1960,1971],[1970,1981]]))  // 1960

// 1656. Design an Ordered Stream
//class OrderedStream {
//    var arr = [String](), ptr = 0
//
//    init(_ n: Int) {
//        arr = [String](repeating: "", count: n)
//    }
//
//    func insert(_ idKey: Int, _ value: String) -> [String] {
//        arr[idKey-1] = value
//
//        if arr[ptr] == "" {
//            return []
//        } else if ptr < arr.count - 1 {
//            let start = ptr
//            for i in ptr..<arr.count {
//                if arr[i] == "" {
//                    ptr = i
//                    return  arr[start..<i].map({ String($0) })
//                }
//            }
//
//            return arr[start..<arr.count].map({ String($0) })
//        } else {
//            return [arr[ptr]]
//        }
//    }
//}
//
//let obj = OrderedStream(5)
//let ret_1: [String] = obj.insert(3, "ccccc")
//print("ret_1 \(ret_1)")
//let ret_2: [String] = obj.insert(1, "aaaaa")
//print("ret_2 \(ret_2)")
//let ret_3: [String] = obj.insert(2, "bbbbb")
//print("ret_3 \(ret_3)")
//let ret_4: [String] = obj.insert(5, "eeeee")
//print("ret_4 \(ret_4)")
//let ret_5: [String] = obj.insert(4, "ddddd")
//print("ret_5 \(ret_5)")

// 1588. Sum of All Odd Length Subarrays
//func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
//    var result = 0
//
//    for c in 1...arr.count {
//        if c%2 == 1 {
//            for i in 0..<arr.count {
//                if i + c <= arr.count {
//                    for j in i..<i+c {
//                        result += arr[j]
//                    }
//                }
//            }
//        }
//    }
//
//    return result
//}
//print(sumOddLengthSubarrays([1, 2]))            // 3
//print(sumOddLengthSubarrays([10, 11, 12]))      // 6
//print(sumOddLengthSubarrays([1, 4, 2, 5, 3]))   // 58

// 1534. Count Good Triplets
//func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
//    var result = [[Int]]()
//
//    func combination(total: [Int], shouldSelect: Int, current index: Int, s: [Int]) {
//        if shouldSelect == 0 {
//            if abs(s[0]-s[1]) <= a, abs(s[1]-s[2]) <= b, abs(s[0]-s[2]) <= c {
//                result.append(s)
//            }
//        } else if index == total.count {
//            return
//        } else {
//            var news = s
//            news.append(total[index])
//            combination(total: total, shouldSelect: shouldSelect-1, current: index+1, s: news)
//            combination(total: total, shouldSelect: shouldSelect, current: index+1, s: s)
//        }
//    }
//
//    combination(total: arr, shouldSelect: 3, current: 0, s: [])
//
//    return result.count
//}
//print(countGoodTriplets([3,0,1,1,9,7], 7, 2, 3))    // 4
//print(countGoodTriplets([1,1,2,2,3], 0, 0, 1))      // 0

// 1732. Find the Highest Altitude
//func largestAltitude(_ gain: [Int]) -> Int {
//    var current = 0
//
//    var result = gain.map({ gain -> Int in
//        current += gain
//
//        return current
//    })
//
//    result.insert(0, at: 0)
//
//    return result.max()!
//}
//print(largestAltitude([-5,1,5,0,-7]))       // 1
//print(largestAltitude([-4,-3,-2,-1,4,3,2])) // 0

// 1266. Minimum Time Visiting All Points
//func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
//    var seconds = 0
//
//    for i in 0..<points.count-1 {
//        seconds += [abs(points[i+1][0]-points[i][0]), abs(points[i+1][1]-points[i][1])].max()!
//    }
//
//    return seconds
//}
//print(minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]]))    // 7
//print(minTimeToVisitAllPoints([[3,2],[-2,2]]))          // 5

// 1252. Cells with Odd Values in a Matrix
//func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
//    var matrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
//
//    for i in indices {  // [x, y]
//        matrix[i[0]] = matrix[i[0]].map({ $0 + 1 })
//
//        for j in 0..<matrix.count {
//            matrix[j][i[1]] += 1
//        }
//    }
//
//    return matrix.reduce(0){ $0 + $1.filter{ $0%2 == 1 }.count }
//}
//print(oddCells(2, 3, [[0,1],[1,1]]))    //  6
//print(oddCells(2, 2, [[1,1],[0,0]]))    //  0

// 1295. Find Numbers with Even Number of Digits
//func findNumbers(_ nums: [Int]) -> Int {
//    return nums.filter({ String($0).count % 2 == 0 }).count
//}
//print(findNumbers([12,345,2,6,7896]))   //  2
//print(findNumbers([555,901,482,1771]))  //  1

// MARK: --- 21.05.14
// 1827. Minimum Operations to Make the Array Increasing
//func minOperations(_ nums: [Int]) -> Int {
//    var n = nums, ans = 0
//
//    for i in 0..<n.count-1 {
//        if n[i] >= n[i+1] {
//            ans += n[i] + 1 - n[i+1]
//            n[i+1] = n[i] + 1
//        }
//    }
//
//    return ans
//}
//print(minOperations([1,1,1]))       // 3
//print(minOperations([1,5,2,4,1]))   // 14
//print(minOperations([8]))           // 0

// 832. Flipping an Image
//func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
////    let reversed = image.map({ $0.reversed() })
////    let invert = reversed.map({ $0.map({ $0 == 1 ? 0 : 1 }) })
////
////    return invert
//     return image.map({ $0.reversed() }).map({ $0.map({ $0 == 1 ? 0 : 1 }) })
//}
//print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))    // [[1,0,0],[0,1,0],[1,1,1]]
//print(flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]))    // [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]

// 1572. Matrix Diagonal Sum
//func diagonalSum(_ mat: [[Int]]) -> Int {
//    var result = 0
//
//    for i in 0..<mat.count {
//        result += mat[i][i]
//        if mat.count % 2 == 1, i == mat.count/2 {
//        } else {
//            result += mat[i][mat.count-1-i]
//        }
//    }
//
//    return result
//}
//print(diagonalSum([[1,2,3],
//                   [4,5,6],
//                   [7,8,9]]))   //  25
//print(diagonalSum([[1,1,1,1],
//                   [1,1,1,1],
//                   [1,1,1,1],
//                   [1,1,1,1]])) //  8
//print(diagonalSum([[5]]))       //  5

// 1464. Maximum Product of Two Elements in an Array
//func maxProduct(_ nums: [Int]) -> Int {
//    var n = nums
//    let first = n.remove(at: n.firstIndex(of: n.max()!)!)
//    let second = n.max()!
//    return (first - 1) * (second - 1)
//}
//print(maxProduct([3,4,5,2]))    // 12
//print(maxProduct([1,5,4,5]))    // 16
//print(maxProduct([3,7]))        // 12

// 1450. Number of Students Doing Homework at a Given Time
//func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
//    return (0..<startTime.count).filter({ startTime[$0]...endTime[$0] ~= queryTime || (startTime[$0]==queryTime && endTime[$0]==queryTime) }).count
//}
//print(busyStudent([1,2,3], [3,2,7], 4)) // 1
//print(busyStudent([4], [4], 4))         // 1
//print(busyStudent([4], [4], 5))         // 0
//print(busyStudent([1,1,1,1], [1,3,2,4], 7)) // 0
//print(busyStudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5)) // 5

// 1304. Find N Unique Integers Sum up to Zero
//func sumZero(_ n: Int) -> [Int] {
//    var result = [Int]()
//
//    for i in 0..<n/2 {
//        result.append(i+1)
//        result.append(-(i+1))
//    }
//    if n%2 == 1 {
//        result.append(0)
//    }
//
//    return result.sorted(by: <)
//}
//print(sumZero(5))   // [-7,-1,1,3,4]
//print(sumZero(3))   // [-1,0,1]
//print(sumZero(1))   // [0]

// 1351. Count Negative Numbers in a Sorted Matrix
//func countNegatives(_ grid: [[Int]]) -> Int {
//    return grid.reduce(0){ $0 + $1.filter({ $0 < 0 }).count }
//}
//print(countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]))    // 8
//print(countNegatives([[3,2],[1,0]]))    // 0
//print(countNegatives([[1,-1],[-1,-1]])) // 3
//print(countNegatives([[-1]]))           // 1

// 905. Sort Array By Parity
//func sortArrayByParity(_ nums: [Int]) -> [Int] {
//    return nums.sorted(by: { $0%2==0 && $1%2==1 })
//}
//print(sortArrayByParity([3, 1, 2, 4]))  // [2, 4, 3, 1]

// 1475. Final Prices With a Special Discount in a Shop
//func finalPrices(_ prices: [Int]) -> [Int] {
//    var result = prices
//    for i in 0..<result.count-1 {
//        if result[i] > result[i+1] {
//            result[i] -= result[i+1]
//        } else {
//            for j in i+1..<result.count {
//                if result[i] >= result[j] {
//                    result[i] -= result[j]
//                    break
//                }
//            }
//        }
//    }
//
//    return result
//}
//print(finalPrices([8,4,6,2,3])) // [4,2,4,2,3]
//print(finalPrices([1,2,3,4,5])) // [1,2,3,4,5]
//print(finalPrices([10,1,1,6]))  // [9,0,1,6]

// 1748. Sum of Unique Elements
//func sumOfUnique(_ nums: [Int]) -> Int {
//    var dic = [Int:Int]()
//
//    for i in nums {
//        if dic.keys.contains(i) {
//            dic[i]! += 1
//        } else {
//            dic.updateValue(1, forKey: i)
//        }
//    }
//
//    return dic.reduce(0){ $0 + ($1.value == 1 ? $1.key : 0) }
//}
//print(sumOfUnique([1,2,3,2]))    // 4
//print(sumOfUnique([1,1,1,1,1]))    // 0
//print(sumOfUnique([1,2,3,4,5]))    // 15

// 1299. Replace Elements with Greatest Element on Right Side
//func replaceElements(_ arr: [Int]) -> [Int] {
//    var result = [Int](), lastMax = 0
//
//    for i in 0..<arr.count-1 {
//        if arr[i] >= lastMax {
//            lastMax = arr[i+1..<arr.count].max()!
//        }
//        result.append(lastMax)
//    }
//    result.append(-1)
//
//    return result
//}
//print(replaceElements([17,18,5,4,6,1])) // [18,6,6,6,1,-1]
//print(replaceElements([400]))           // [-1]

// MARK: --- 21.05.15
// 561. Array Partition I
//func arrayPairSum(_ nums: [Int]) -> Int {
//    var sorted = nums.sorted(by: <), result = 0
//    for i in 0..<nums.count {
//        if i%2==0 {
//            result += sorted[i]
//        }
//    }
//    return result
//}
//print(arrayPairSum([1,4,3,2]))      // 4
//print(arrayPairSum([6,2,6,5,1,2]))  // 9

// 1742. Maximum Number of Balls in a Box
//func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
//    var ballCount = [Int](repeating: 0, count: highLimit+1)
//
//    for i in lowLimit...highLimit {
//        if String(i).count > 1 {
//            let sum = String(i).reduce(0){ $0 + Int(String($1))! }
//            ballCount[sum] += 1
//        } else {
//            ballCount[i] += 1
//        }
//    }
//    return ballCount.max()!
//}
//print(countBalls(1, 10))    // 2
//print(countBalls(5, 15))    // 2
//print(countBalls(19, 28))   // 2

// 1051. Height Checker
//func heightChecker(_ heights: [Int]) -> Int {
//    let sorted = heights.sorted(by: <)
//    return (0..<heights.count).filter({ heights[$0] != sorted[$0] }).count
//}
//print(heightChecker([1,1,4,2,1,3])) // 3
//print(heightChecker([5,1,2,3,4]))   // 5
//print(heightChecker([1,2,3,4,5]))   // 0

// 1460. Make Two Arrays Equal by Reversing Sub-arrays
//func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
//    var t = target, a = arr
//
//    while !a.isEmpty {
//        if let first = t.first {
//            if let index = a.firstIndex(of: first) {
//                let reverse = a[a.startIndex...index].reversed()
//                let left = a[a.index(after: index)..<a.endIndex]
//                a.removeAll()
//                a = reverse.map({ Int($0) })
//                if left.count > 0 {
//                    _ = left.map({ a.append(Int($0)) })
//                }
//
//                t.removeFirst()
//                a.removeFirst()
//            } else {
//                break
//            }
//        }
//    }
//
//    return a.isEmpty
//}
//print(canBeEqual([1,2,3,4], [2,4,1,3]))     // true
//print(canBeEqual([7], [7]))                 // true
//print(canBeEqual([1,12], [12,1]))           // true
//print(canBeEqual([3,7,9], [3,7,11]))        // false
//print(canBeEqual([1,1,1,1,1], [1,1,1,1,1])) // true

// 1337. The K Weakest Rows in a Matrix
//func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
//    var force = [Int](repeating: 0, count: mat.count)
//    for (i, v) in mat.enumerated() {
//        let soldiers = v.filter({ $0 == 1 }).count
//        force[i] = soldiers
//    }
//
//    var indexes = [Int]()
//
//    for _ in 0..<k {
//        if let firstMin = force.min() {
//            indexes.append(force.firstIndex(of: firstMin)!)
//            force[force.firstIndex(of: firstMin)!] = 101
//        }
//    }
//
//    return indexes
//}
//print(kWeakestRows([[1,1,0,0,0],
//                    [1,1,1,1,0],
//                    [1,0,0,0,0],
//                    [1,1,0,0,0],
//                    [1,1,1,1,1]], 3))   // [2,0,3]
//print(kWeakestRows([[1,0,0,0],
//                    [1,1,1,1],
//                    [1,0,0,0],
//                    [1,0,0,0]], 2))     // [0,2]

// 977. Squares of a Sorted Array
//func sortedSquares(_ nums: [Int]) -> [Int] {
//    return nums.map({ $0*$0 }).sorted(by: <)
//}
//print(sortedSquares([-4,-1,0,3,10]))    // [0,1,9,16,100]
//print(sortedSquares([-7,-3,2,3,11]))    // [4,9,9,49,121]

// 1502. Can Make Arithmetic Progression From Sequence
//func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
//    var a = arr.sorted(by: <)
//    let difference = a[0] - a[1]
//    
//    for i in 0..<a.count-1 {
//        if a[i] - a[i+1] != difference {
//            return false
//        }
//    }
//    
//    return true
//}
//print(canMakeArithmeticProgression([3,5,1]))    // true
//print(canMakeArithmeticProgression([1,2,4]))    // false

// 1217. Minimum Cost to Move Chips to The Same Position
//func minCostToMoveChips(_ position: [Int]) -> Int {
//    var dic = [Int:Int]()
//
//    for i in position {
//        if let _ = dic[i] {
//            dic[i]! += 1
//        } else {
//            dic.updateValue(1, forKey: i)
//        }
//    }
//
//    var results = [Int]()
//
//    for i in dic.keys {
//        var d = dic
//        d.removeValue(forKey: i)
//        results.append( d.map({ abs($0.key - i)%2 == 1 ? $0.value : 0 }).reduce(0,+) )
//    }
//
//    return results.min()!
//}
//print(minCostToMoveChips([1,2,3]))          // 1
//print(minCostToMoveChips([2,2,2,3,3]))      // 2
//print(minCostToMoveChips([1,1000000000]))   // 1

// 922. Sort Array By Parity II
//func sortArrayByParityII(_ nums: [Int]) -> [Int] {
//    var q = nums, result = [Int]()
//    while !q.isEmpty {
//        if result.count % 2 == 0 {
//            if let first = q.first, first % 2 == 0 {
//                result.append(q.removeFirst())
//            } else {
//                q.append(q.removeFirst())
//            }
//        } else {
//            if let first = q.first, first % 2 == 1 {
//                result.append(q.removeFirst())
//            } else {
//                q.append(q.removeFirst())
//            }
//        }
//    }
//    return result
//}
//print(sortArrayByParityII([4,2,5,7]))   // [4,5,2,7]
//print(sortArrayByParityII([2,3]))       // [2,3]

// MARK: --- 21.05.16
// 1380. Lucky Numbers in a Matrix
//func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
//    let rowMin = matrix.map({ $0.min()! })
//    let colMax = (0..<matrix.first!.count).map({ i -> Int in
//        var max = [Int]()
//        for j in 0..<matrix.count {
//            max.append(matrix[j][i])
//        }
//        return max.max()!
//    })
//
//    let luckyNum = rowMin.filter({ colMax.contains($0) })
//
//    return luckyNum
//}
//print(luckyNumbers([[3,7,8],[9,11,13],[15,16,17]]))         // [15]
//print(luckyNumbers([[1,10,4,2],[9,3,8,7],[15,16,17,12]]))   // [12]
//print(luckyNumbers([[7,8],[1,2]]))                          // [7]

// 1002. Find Common Characters
//func commonChars(_ words: [String]) -> [String] {
//    var chars = words.map({ $0.map({ Character(extendedGraphemeClusterLiteral: $0) }) })
//    var result = [String]()
//
//    for c in chars[0] {
//        if chars.filter({ $0.contains(c) }).count == chars.count {
//            for i in 0..<chars.count {
//                chars[i].remove(at: chars[i].firstIndex(of: c)!)
//            }
//            result.append(String(c))
//        }
//    }
//
//    return result
//}
//print(commonChars(["bella","label","roller"]))  // ["e","l","l"]
//print(commonChars(["cool","lock","cook"]))      // ["c","o"]

// 1491. Average Salary Excluding the Minimum and Maximum Salary
//func average(_ salary: [Int]) -> Double {
//    var removed = salary
//
//    removed.remove(at: removed.firstIndex(of: salary.max()!)!)
//    removed.remove(at: removed.firstIndex(of: salary.min()!)!)
//
//    let result = Double(removed.reduce(0, +))/Double(removed.count)
//
//    return result
//}
//print(average([4000,3000,1000,2000]))           // 2500.00000
//print(average([1000,2000,3000]))                // 2000.00000
//print(average([6000,5000,4000,3000,2000,1000])) // 3500.00000
//print(average([8000,9000,2000,3000,6000,1000])) // 4750.00000

// MARK: --- 21.05.17
// 1122. Relative Sort Array
//func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
//    var remover = arr1.sorted(by: <), result = [Int]()
//
//    for i in 0..<arr2.count {
//        result.append(arr2[i])
//
//        if let index = remover.firstIndex(of: arr2[i]) {
//            remover.remove(at: index)
//        }
//        while let index = remover.firstIndex(of: arr2[i]) {
//            result.append(remover.remove(at: index))
//        }
//    }
//    while !remover.isEmpty {
//        result.append(remover.removeFirst())
//    }
//
//    return result
//}
//print(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6]))   // [2,2,2,1,4,3,3,9,6,7,19]
//print(relativeSortArray([28,6,22,8,44,17], [22,28,8,6]))

// 1160. Find Words That Can Be Formed by Characters
//func countCharacters(_ words: [String], _ chars: String) -> Int {
//    var result = 0
//    for word in words {
//        var muWord = word, muChars = chars
//        checkWord : while !muWord.isEmpty {
//            if let first = muWord.first, muChars.contains(first) {
//                muChars.remove(at: muChars.firstIndex(of: muWord.removeFirst())!)
//                if muWord.isEmpty {
//                    result += word.count
//                }
//            } else {
//                break checkWord
//            }
//        }
//    }
//    return result
//}
//print(countCharacters(["cat","bt","hat","tree"], "atach"))              // 6
//print(countCharacters(["hello","world","leetcode"], "welldonehoneyr"))  // 10

// 509. Fibonacci Number
//func fib(_ n: Int) -> Int {
//    return n > 1 ? fib(n-1) + fib(n-2) : n == 0 ? 0 : 1
//}
//print(fib(2))   // 1
//print(fib(3))   // 2
//print(fib(4))   // 3

// 999. Available Captures for Rook
//func numRookCaptures(_ board: [[Character]]) -> Int {
//    var result = 0, rookIndex = (0, 0) // x, y
//
//    LookforY : for y in 0..<board.count {
//        LookforX : for x in 0..<board[0].count {
//            if board[y][x] == "R" {
//                rookIndex = (y, x)
//                break LookforY
//            }
//        }
//    }
//
//    var colRook = [String](), col = 0
//    for i in 0..<board.count {
//        if board[i][rookIndex.1] != "." {
//            colRook.append(String(board[i][rookIndex.1]))
//            if board[i][rookIndex.1] == "R" {
//                col = colRook.count-1
//            }
//        }
//    }
//    if col > 0 {
//        if colRook[col-1] == "p" {
//            result += 1
//        }
//    }
//    if col + 1 < colRook.count {
//        if colRook[col+1] == "p" {
//            result += 1
//        }
//    }
//
//    var rowRook = [String](), row = 0
//    for i in 0..<board[0].count {
//        if board[rookIndex.0][i] != "." {
//            rowRook.append(String(board[rookIndex.0][i]))
//            if board[rookIndex.0][i] == "R" {
//                row = rowRook.count-1
//            }
//        }
//    }
//    if row > 0 {
//        if rowRook[row-1] == "p" {
//            result += 1
//        }
//    }
//    if row + 1 < rowRook.count {
//        if rowRook[row+1] == "p" {
//            result += 1
//        }
//    }
//
//    return result
//}
//print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]))    // 3
//print(numRookCaptures([[".",".",".",".",".",".",".","."],[".","p","p","p","p","p",".","."],[".","p","p","B","p","p",".","."],[".","p","B","R","B","p",".","."],[".","p","p","B","p","p",".","."],[".","p","p","p","p","p",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]))    // 0
//print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","p",".",".",".","."],["p","p",".","R",".","p","B","."],[".",".",".",".",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."]]))    // 3

// TODO: 문제 이해필요
// 1700. Number of Students Unable to Eat Lunch
//func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
//
//}
//print(countStudents([1,1,0,0], [0,1,0,1]))          // 0
//print(countStudents([1,1,1,0,0,1], [1,0,0,0,1,1]))  // 3

// TODO: 풀이 시도 필요
// 1200. Minimum Absolute Difference
//func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
//    return [[]]
//}
//print(minimumAbsDifference([4,2,1,3]))                  // [[1,2],[2,3],[3,4]]
//print(minimumAbsDifference([1,3,6,10,15]))              // [[1,3]]
//print(minimumAbsDifference([3,8,-10,23,19,-4,-14,27]))  // [[-14,-10],[19,23],[23,27]]


