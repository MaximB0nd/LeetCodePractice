//
//  MaxProductThree.swift
//  LeetCode
//
//  Created by Максим Бондарев on 05.03.2025.
//

/*
 not solved
 */


import Foundation



func maximumProduct(_ nums: [Int]) -> Int {
    let one = nums.max()!
    let two = (nums.filter({$0 != nums.max()!})).max()!
    let three = nums.filter({$0 != nums.max()! && $0 != (nums.filter({$0 != nums.max()!})).max()!}).max()!

    return (one * two * three)
    
    
}
