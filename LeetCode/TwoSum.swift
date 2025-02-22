//
//  TwoSum.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 */

class SumTwo{
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index1, num1) in nums.enumerated() {
            for (index2, num2) in nums.enumerated() where index1 != index2 {
                if num1 + num2 == target {
                    return [index1, index2]
                }
            }
        }
        return []
    }
}
