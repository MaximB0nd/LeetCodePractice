//
//  Triplet.swift
//  LeetCode
//
//  Created by Максим Бондарев on 04.04.2025.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
//    
//    let uniqValues = Array(Set(nums)).sorted()
    /*
    var uniq = [Int]()
    var n = 0
    
    guard Set(nums).count >= 3 else {
        return false
    }
    
    for i in nums {
        if !uniq.contains(i) ||
            uniq[..<n].contains(where: {$0 < i}) {
            uniq.append(i)
            n += 1
        }
    }
    
   
    
    guard uniq.count >= 3 else {
        return false
    }

    
    for i in 0..<uniq.count-2 {
        if uniq[i+1..<uniq.count].contains(where: {$0 > uniq[i]}){
            
            
            var unique = Array(uniq[uniq[i+1..<uniq.count]
                .firstIndex(where: {$0 > uniq[i]})!..<uniq.count]) as [Int]

    
            
            while unique.contains(where: {$0 > uniq[i]}) {
                if unique.contains(where: {$0 > unique[0]}) {
                    return true
                }
                else{
                    unique.remove(at: 0)
                    if unique.contains(where: {$0 > uniq[i]}) {
                        unique = Array(unique[unique.firstIndex(where: {$0 > uniq[i]})!..<unique.count]) as [Int]
                    }
                    else {break}
                }
            }
            
        
            
        }
    }*/
    
    var n1 = Int.max
    var n2 = Int.max
    
    for i in 0...nums.count-2 {
        if nums[i] < n1 {
            n1 = nums[i]
        }
        else if nums[i] < n2 {
            n2 = nums[i]
        }
        else {
            return true
        }
    }
    return false
    
}

extension String {
    subscript (n: Int) -> String?{
        if n >= 0 && n < self.count {
            return "\(self.split(separator: "")[n])"
        }
        else {return nil}
    }
}
    
    


    

//    for i in 0...uniqValues.count-1 {
//        
//        let newArr = nums[nums.firstIndex(of: uniqValues[i])!..<nums.count]
//        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // get arr of now min value
        //let arr = Array(nums[nums.firstIndex(of: uniqValues[i])!..<nums.count]) as [Int]
        
        
        
        
        
//        for j in i+1..<uniqValues.count {
//            
//            if arr.contains(uniqValues[j]){
//                
//                let newArr: [Int] = Array(arr[arr.firstIndex(of: uniqValues[j])!..<arr.count]) as [Int]
//                
//                if newArr.contains(where: {$0 > uniqValues[j]}){
//                    return true
//                }
//            }
//        }
//    }

//    for i in 0..<nums.count-1 {
//        let newNums = nums[i+1..<nums.count].filter({$0 > nums[i]})
//        for j in 0..<newNums.count {
//            let newNewNums = newNums[j+1..<newNums.count].filter({$0 > newNums[j]})
//            if newNewNums.count >= 1 {
//                return true
//            }
//        }
//        
//    }
