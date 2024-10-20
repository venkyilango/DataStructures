//
//  TwoSum.swift
//  SDUI
//
//  Created by iVenky on 10/20/24.
//

import UIKit
//36. ValidSudoku
//Input: board =
//[["5","3",".",".","7",".",".",".","."]
//,["6",".",".","1","9","5",".",".","."]
//,[".","9","8",".",".",".",".","6","."]
//,["8",".",".",".","6",".",".",".","3"]
//,["4",".",".","8",".","3",".",".","1"]
//,["7",".",".",".","2",".",".",".","6"]
//,[".","6",".",".",".",".","2","8","."]
//,[".",".",".","4","1","9",".",".","5"]
//,[".",".",".",".","8",".",".","7","9"]]
//Output: true
class Solution {
    struct Grid: Hashable {
    var row: Int
    var col: Int
}

func isValidSudoku(_ board: [[Character]]) -> Bool {
    //create a dictionary for rows, col and Grid where key is pointing to the index and value and is the number defined in the grid
    var rows = [Int: Set<Character>]()
    var col = [Int: Set<Character>]()
    var grid = [Grid: Set<Character>]()
    //iterate through the entire row and column in nested for loop
    //we manually define the upper limit as 9
    for r in 0..<9 {
        for c in 0..<9 {
            //if the index contains . proceed ahead
            if board[r][c] == "." { continue }
            /*if the row dict contains existing number or
            if the column dict contains existing number or
             if the grid contains existing number return false*/
            
            /*To calculate right grid we are dividing the index of row and column by  3 which eventaully points to the right grid and check to see if the number does not exists in the 3X3 grid*/
            
            if rows[r, default: Set<Character>()].contains(board[r][c]) ||
                col[c, default: Set<Character>()].contains(board[r][c]) ||
                grid[Grid(row: r/3, col: c/3), default: Set<Character>()].contains(board[r][c]) {
                    return false
                }
            rows[r, default: Set<Character>()].insert(board[r][c])
            col[c, default: Set<Character>()].insert(board[r][c])
            grid[Grid(row: r/3, col: c/3), default: Set<Character>()].insert(board[r][c])
            
        }
    }
    return true
}
}
