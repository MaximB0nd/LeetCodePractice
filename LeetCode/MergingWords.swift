//
//  MergingWords.swift
//  LeetCode
//
//  Created by Максим Бондарев on 31.03.2025.
//

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result: String = ""
    for i in 0..<max(word1.count, word2.count){
        if (i < word1.count){
            result += String(word1[word1.index(word1.startIndex, offsetBy: i)])
        }
        
        if (i < word2.count){
            
            result += String(word2[word2.index(word2.startIndex, offsetBy: i)])
        }
    }
    return result
}
