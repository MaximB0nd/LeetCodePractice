//
//  ReverseString.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func reverseWords(_ s: String) -> String {
    
    var arr = s.split(separator: " ")
    arr.removeAll(where: {$0.isEmpty})
    
    return arr.reversed().joined(separator: " ")
    
}
