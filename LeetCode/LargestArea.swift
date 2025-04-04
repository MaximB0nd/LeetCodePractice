//
//  LargestArea.swift
//  LeetCode
//
//  Created by Максим Бондарев on 31.03.2025.
//

import Foundation


//func largestRectangleArea(_ heights: [Int]) -> Int {
//    var maxArea: Int = heights[0]
//    for startNum in 0..<heights.count {
//        if (heights[startNum] > maxArea){
//            maxArea = heights[startNum]
//        }
//        
//        var arr = [heights[startNum]]
//        
//        if (startNum + 1 < heights.count){
//            for i in startNum+1..<heights.count {
//                
//                
//                arr.append(heights[i])
//                let minValue = arr.min()
//                if (minValue!*arr.count) > maxArea {
//                    maxArea = minValue!*arr.count
//                    
//                }
//            }
//        }
//        else {
//            if (heights[startNum]) > maxArea {
//                maxArea = heights[startNum]
//            }
//        }
//    }
//    return maxArea
//}
//
//


func largestRectangleArea(_ heights: [Int]) -> Int {
    guard !heights.isEmpty else { return 0 }
    
    var stack = [Int]()
    var maxArea = 0
    let n = heights.count
    
    for i in 0..<n {
        while let last = stack.last, heights[i] < heights[last] {
            let height = heights[stack.removeLast()]
            let width = stack.isEmpty ? i : i - stack.last! - 1
            maxArea = max(maxArea, height * width)
        }
        stack.append(i)
    }
    
    while !stack.isEmpty {
        let height = heights[stack.removeLast()]
        let width = stack.isEmpty ? n : n - stack.last! - 1
        maxArea = max(maxArea, height * width)
    }
    
    return maxArea
}
