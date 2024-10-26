//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//704. Binary Search
func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        while low <= high {
            let mid = (low + high)/2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                high = mid - 1
            } else if nums[mid] < target {
                low = mid + 1
            }
        }
        return -1
    }
