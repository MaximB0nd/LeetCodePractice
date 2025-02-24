//
//  TergetMatrix2D.swift
//  LeetCode
//
//  Created by Максим Бондарев on 24.02.2025.
//

import Foundation

/*
 You are given an m x n integer matrix matrix with the following two properties:

 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for array in matrix {
        if array.contains(target) {
            return true
        }
    }
    return false
}
