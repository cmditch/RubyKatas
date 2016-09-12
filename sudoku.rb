require 'matrix'

def sudoku(board)
  n = [*1..9]
  board = Matrix.rows(board)

  first, middle, last = (0..2), (3..5), (6..8)

  combo = [first, middle, last]

# Rows and Columns
  (0..8).each do |x|
    r = board.row(x).to_a.flatten
    c = board.column(x).to_a.flatten
    return false if (n - r).any? || (n - c).any?
  end

# 3 by 3's blocks
  combo.each do |x|
    combo.each do |y|
      b = board.minor(x, y).to_a.flatten
      return false if (n - b).any?
    end
  end
true
end


 right = [[5, 3, 4, 6, 7, 8, 9, 1, 2], 
          [6, 7, 2, 1, 9, 5, 3, 4, 8],
          [1, 9, 8, 3, 4, 2, 5, 6, 7],
          [8, 5, 9, 7, 6, 1, 4, 2, 3],
          [4, 2, 6, 8, 5, 3, 7, 9, 1],
          [7, 1, 3, 9, 2, 4, 8, 5, 6],
          [9, 6, 1, 5, 3, 7, 2, 8, 4],
          [2, 8, 7, 4, 1, 9, 6, 3, 5],
          [3, 4, 5, 2, 8, 6, 1, 7, 9]]
                                
 wrong = [[5, 3, 4, 6, 7, 8, 9, 1, 2], 
          [6, 7, 2, 1, 9, 0, 3, 4, 9],
          [1, 0, 0, 3, 4, 2, 5, 6, 0],
          [8, 5, 9, 7, 6, 1, 0, 2, 0],
          [4, 2, 6, 8, 5, 3, 7, 9, 1],
          [7, 1, 3, 9, 2, 4, 8, 5, 6],
          [9, 0, 1, 5, 3, 7, 2, 1, 4],
          [2, 8, 7, 4, 1, 9, 6, 3, 5],
          [3, 0, 0, 4, 8, 1, 1, 7, 9]]

wrong_block = [[5, 3, 4, 6, 7, 8, 9, 1, 2], 
              [6, 7, 2, 1, 9, 5, 3, 4, 8],
              [1, 9, 8, 7, 4, 2, 5, 6, 3],
              [8, 5, 9, 3, 6, 1, 4, 2, 7],
              [4, 2, 6, 8, 5, 3, 7, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 7, 9]]

sudoku(right)
sudoku(wrong)
sudoku(wrong_block)

