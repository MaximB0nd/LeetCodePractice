//
//  ProductExpect.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {

    var result = [Int](repeating: 1, count: nums.count)
    
    for i in 0..<nums.count {
        result[i] *= nums[0..<i].reduce(1, *) * nums[(i+1)..<nums.count].reduce(1, *)
    }
    
    return result
}
