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

// 1656. Design an Ordered Stream
//class OrderedStream {
//    var arr = [String](), ptr = 1
//
//    init(_ n: Int) {
//        arr = [String](repeating: "", count: n + 1)
//
//        print("init \(arr)")
//    }
//
//    func insert(_ idKey: Int, _ value: String) -> [String] {
//        arr[idKey] = value
//        print("insert \(idKey), arr \(arr)")
//
//
//    }
//}
//let obj = OrderedStream(5)
//let ret_1: [String] = obj.insert(3, "ccccc")
//print("ret_1 \(ret_1)")6
//let ret_2: [String] = obj.insert(1, "aaaaa")
//print("ret_2 \(ret_2)")
//let ret_3: [String] = obj.insert(2, "bbbbb")
//print("ret_3 \(ret_3)")
//let ret_4: [String] = obj.insert(5, "eeeee")
//print("ret_4 \(ret_4)")
//let ret_5: [String] = obj.insert(4, "ddddd")
//print("ret_5 \(ret_5)")

// 1588. Sum of All Odd Length Subarrays
func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
    var result = [Int]()

    for i in 0..<arr.count {
        if (i+1)%2 == 1 {
            for j in
        }
    }
        
    return result.reduce(0, +)
}

print(sumOddLengthSubarrays([1, 2]))            // 3
//print(sumOddLengthSubarrays([10, 11, 12]))      // 6
print(sumOddLengthSubarrays([1, 4, 2, 5, 3]))   // 58
