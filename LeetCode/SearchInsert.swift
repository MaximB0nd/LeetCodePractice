//
//  SearchInsert.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 */

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard !nums.isEmpty else {
        return -1
    }
    if nums.contains(target){
        return nums.firstIndex(of: target)!
    }
    if nums[nums.count-1] < target{
        return nums.count
    }
    for (index, i) in nums.enumerated()  {
        if i > target {
            return index-1
        }
    }
    return 1
}
    
