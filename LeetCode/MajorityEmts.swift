//
//  MajorityEmts.swift
//  LeetCode
//
//  Created by Максим Бондарев on 05.03.2025.
//



/*
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
 */

import Foundation

func majorityElement(_ nums: inout [Int]) -> [Int] {
    let correctCount = nums.count / 3
    nums.sort()
    let setNums = Set(nums)
    var result: [Int] = []
    for num in setNums {
        if nums.filter({$0 == num}).count > correctCount {
            result.append(num)
        }
    }
    return result
}
