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
        print(stepsMap(steps: [10, -5, -20, -10, 20, 30, -10, 10]))
    }
}
