//
//  MediubOfArray.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 */

import Foundation

public func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var num = nums1 + nums2
    num.sort()
    if (num.count % 2 != 0){
        return Double(num[num.count/2])
    }
    else {
        return Double(num[num.count/2] + num[num.count/2 - 1]) / 2
    }
}
