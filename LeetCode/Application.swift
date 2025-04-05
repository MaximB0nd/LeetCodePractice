//
//  main.swift
//  LeetCode
//
//  Created by Максим Бондарев on 22.02.2025.
//

import Foundation

let a = ["This", "is", "an", "example", "of", "text", "justification."]
let b = ["Thiis"]
let c = ["What","must","be","acknowledgment","shall","be"]
let d = ["Science", "is", "what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"]

//print(fullJustify(c, 16))

@main
struct AppApplication {
    static func main() throws{
        let a = [2,4,-2,-3]
        let b = [1,5,0,4,1,3]
        let c = [2,1,5,0,4,6]
        let d = [0,4,2,1,0,-1,-3]
        print(increasingTriplet(d))
    }
}
