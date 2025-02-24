//
//  SortColors.swift
//  LeetCode
//
//  Created by Максим Бондарев on 24.02.2025.
//

import Foundation

/*
 Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.
 */

func sortColors(_ nums: inout [Int]) {
    for i in 0..<nums.count {
        for j in 0..<nums.count-i-1 {
            if nums[j] > nums[j+1] {
                nums.swapAt(j, j+1)
            }
        }
    }
}
