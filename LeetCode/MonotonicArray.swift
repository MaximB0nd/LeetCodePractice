//
//  MonotonicArray.swift
//  LeetCode
//
//  Created by Максим Бондарев on 24.02.2025.
//

import Foundation

/*
 An array is monotonic if it is either monotone increasing or monotone decreasing.

 An array nums is monotone increasing if for all i <= j, nums[i] <= nums[j]. An array nums is monotone decreasing if for all i <= j, nums[i] >= nums[j].

 Given an integer array nums, return true if the given array is monotonic, or false otherwise.
 */

func isMonotonic(_ nums: [Int]) -> Bool {
    var index = 0
    var growing = true
    var downing = false
    while true{
        if index == nums.count-1 {
            return true
        }
        if nums[index] != nums[index+1] {
        break
        }
        index += 1
        
    }
        if nums[index] > nums[index+1] {
        growing = false
        downing = true
    }
    
    index = 0
    
    while index < nums.count-1 {
        if growing {
            if !(nums[index] <= nums[index+1]) {
                return false
            }
        }
        if downing {
            if !(nums[index] >= nums[index+1]) {
                return false
            }
            
        }
        index += 1
    }
    
    return true
}
