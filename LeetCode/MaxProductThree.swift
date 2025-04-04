//
//  MaxProductThree.swift
//  LeetCode
//
//  Created by Максим Бондарев on 05.03.2025.
//

/*
 not solved
 */


import Foundation



func maximumProduct(_ nums: [Int]) -> Int {
    var nums = nums
    nums.sort(by: compare)
    
    print(nums)
    return nums[nums.count - 3] * nums[nums.count - 2] * nums[nums.count - 1]
    
    
}

func compare(_ lhs: Int, _ rhs: Int) -> Bool {
    return abs(lhs) < abs(rhs)
}
