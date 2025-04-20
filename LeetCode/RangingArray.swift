//
//  RangingArray.swift
//  LeetCode
//
//  Created by Максим Бондарев on 07.04.2025.
//

import Foundation

func rangingArray(_ arr: [Int]) -> [Int] {
    var dp = [1]
    var prev = [-1]
    
    for i in 1..<arr.count {
        var flag = false
        for j in 0..<i {
            if dp[j] > arr[i] {
                dp.append(dp[j-1] + 1)
                prev.append(prev[j-1])
                flag = true
            }
        }
        if !flag {
            dp.append(i-1)
            prev.append(i-1)
        }
        
    }
    return prev
}
