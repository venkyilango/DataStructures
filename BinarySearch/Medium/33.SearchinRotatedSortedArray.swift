//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

//33. Search in Rotated Sorted Array
func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            if nums[left] == target {
                return left
            } else if nums[right] == target {
                return right
            } else {
                left += 1
                right -= 1
            }
        }
        return -1
    }
