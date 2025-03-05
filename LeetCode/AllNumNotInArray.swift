//
//  AllNumNotInArray.swift
//  LeetCode
//
//  Created by Максим Бондарев on 05.03.2025.
//



/*
 Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.
 */

import Foundation


func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    
    var set = Set(nums)
    var set2 = Set<Int>(1...nums.count)
    return Array(set2.subtracting(set))
    
//    return Array(1...nums.count).filter { !nums.contains($0) }
}

