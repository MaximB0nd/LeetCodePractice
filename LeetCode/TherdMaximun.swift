//
//  TherdMaximun.swift
//  LeetCode
//
//  Created by Максим Бондарев on 05.03.2025.
//

/*
 Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.
 */


import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    var nums = nums
    let numsa = nums
    var maximum: Int?

    for _ in 0..<2{
        if (nums.max() != nil){
            maximum = nums.max()!
            nums.removeAll(where: { $0 == maximum})
        }
    }
    
    
    
    return nums.max() ?? numsa.max() ?? 0



}
