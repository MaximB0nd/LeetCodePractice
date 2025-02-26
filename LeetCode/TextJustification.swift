//
//  TextJustification.swift
//  LeetCode
//
//  Created by Максим Бондарев on 25.02.2025.
//

/*
 Given an array of strings words and a width maxWidth, format the text such that each line has exactly maxWidth characters and is fully (left and right) justified.

 You should pack your words in a greedy approach; that is, pack as many words as you can in each line. Pad extra spaces ' ' when necessary so that each line has exactly maxWidth characters.

 Extra spaces between words should be distributed as evenly as possible. If the number of spaces on a line does not divide evenly between words, the empty slots on the left will be assigned more spaces than the slots on the right.

 For the last line of text, it should be left-justified, and no extra space is inserted between words.
 */


import Foundation

func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
    var result: [String] = []
    var text = [String]()
    var lenOfWords: Int = 0
    var spaces = 0
    
    for word in words {
        if lenOfWords + word.count + spaces <= maxWidth {
            text.append(word)
            lenOfWords += word.count
            spaces += 1
        }
        else{
            result.append(textPlusSpaces(text, lenOfWords, spaces-1, maxWidth))
            text = [word]
            lenOfWords = word.count
            spaces = 1
        }
    }
    
    result.append(textPlusSpaces(text, maxWidth))
    
    for text in result{
        print(text)
    }
    
    return result
    

}

    
func textPlusSpaces(_ text: [String], _ len: Int,  _ spaces: Int,  _ maxWidth: Int) -> String {
    var text = text
    var spaces = maxWidth - len
    var index = 0
    while true{
        guard spaces > 0 else {
            break
        }
        text[index] += " "
        spaces -= 1
        
        if text.count != 1{
            if index == text.count - 2{
                index = 0
            }
            else {
                index += 1
            }
        }
        
        
    }
    return text.joined()
        
}

func textPlusSpaces(_ text: [String], _ maxWidth: Int) -> String{
    var result = text.joined(separator: " ")
    result += String(repeating: " ", count: maxWidth - result.count)
    return result
}
