//
//  Sum3Zero.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

/*
 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
 If target is not found in the array, return [-1, -1].
 */


import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int?] {
    if nums.contains(target) {
        return [nums.firstIndex(of: target), nums.lastIndex(of: target)!]
    }
    return []
    
}
