//
//  GCDOfString.swift
//  LeetCode
//
//  Created by Максим Бондарев on 03.04.2025.
//

import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    
    let str = ((str1.count > str2.count) ? str1 : str2).split(separator: "")
    let otherStr = (str1.count > str2.count) ? str2 : str1
    
    var gcd: String = ""
    
    for i in stride(from: 0, to: str.count, by: 1) {
        
        var char = "\(str[i])"
        if (otherStr.contains(char) && gcd.count < char.count){
            gcd = "\(char)"
        }
        for j in stride(from: i+1, to: str.count, by: 1) {
            char += "\(str[j])"
            if (otherStr.contains(char) && gcd.count < char.count){
                gcd = char
            }
        }
    }
    
    
    return gcd

}


func getUniqueString(_ str: String){
    
    var strArr = str.split(separator: "")
    var result = ""
    
    for i in stride(from: 0, to: strArr.count, by: 1) {
        var char = "\(strArr[i])"
        
        for j in stride(from: i+1, to: strArr.count, by: 1) {
            char += "\(strArr[j])"
        }
    }
    
    
}
