//
//  GCDOfString.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    var result = ""
    for i in 0..<str1.count {
        var char = "\(str1[i])"
        if str2.contains(char){
            result = char
        }
        for j in i+1..<str1.count {
            
            if str2.contains(char + "\(str1[i])") {
                char += "\(str1[i])"
                result = char

            }
            else { break }
        }
    }
    return result
    
}

