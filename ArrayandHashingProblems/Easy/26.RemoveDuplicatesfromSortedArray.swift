//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//26. Remove Duplicates from Sorted Array
//Input: nums = [0,0,1,1,1,2,2,3,3,4]
//Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
func removeDuplicates(_ nums: inout [Int]) -> Int {
       var leftPtr = 1
    for i in 1..<nums.count {
        if nums[i] != nums[i-1] {
            nums[leftPtr] = nums[i]
            leftPtr += 1
        }
    }
    return leftPtr
}
