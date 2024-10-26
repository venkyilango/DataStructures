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
        var right = nums.count-1
        while left <= right {
            let middle = (left + right) / 2
            if nums[middle] == target {
                return middle
            }
            //find the value in the left sorted portion
            if nums[middle] >= nums[left] {
                if target < nums[left] || target > nums[middle] {
                    left = middle + 1
                } else {
                    right = middle - 1
                }
            } else {
                //find the value in the right sorted portion
                if target > nums[right] || target < nums[middle] {
                    right = middle - 1
                } else {
                    left = middle + 1
                }
            }
            
        }
        return -1
    }
