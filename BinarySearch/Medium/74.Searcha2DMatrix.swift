//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit

var matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
//74. Search a 2D Matrix
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let columns = matrix[0].count
        var row = rows - 1
        var column = 0
        while row >= 0 && column < columns {
            let number = matrix[row][column]
            if number == target {
                return true
            }

            if number > target {
                row -= 1
            } else {
                column += 1
            }
        }
        return false
    }
searchMatrix(matrix, 3)
