//
//  main.swift
//  496
//
//  Created by Yongwoo Marco on 2021/05/03.
//

// 21.05.03
// 496. Next Greater Element I
// https://leetcode.com/problems/next-greater-element-i/

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    nums1.map{ n1 in
        for i in nums2.firstIndex(of: n1)!..<nums2.count {
            if n1 < nums2[i] {
                return nums2[i]
            }
        }
        return -1
    }
}

let nums1 = [4,1,2], nums2 = [1,3,4,2]  // [-1, 3, -1]

//let nums1 = [2,4], nums2 = [1,2,3,4]  // [3, -1]

//let nums1 = [4,1,2], nums2 = [1,2,3,4]    // [-1, 2, 3]

print(nextGreaterElement(nums1, nums2))

