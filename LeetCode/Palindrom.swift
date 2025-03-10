//
//  Palindrom.swift
//  LeetCode
//
//  Created by Максим Бондарев on 07.03.2025.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    
    guard x >= 0 else {
        return false
    }
    var xString = String(x).split(separator: "")
    for i in 0...x/2{
        if (!equelsCharacters(xString[i], xString[xString.count-1])){
            return false
        }
    }
    return true
    
    func equelsCharacters(_ first: Substring, _ second: Substring) -> Bool {
        return 
    }
    
}
