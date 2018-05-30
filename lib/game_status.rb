# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8], 
  [2,4,6],
  [0,4,8],
  ]

def won(board)
  win_combination_1 = WIN_COMBINATIONS[0]
  win_combination_2 = WIN_COMBINATIONS[1]
  win_combination_3 = WIN_COMBINATIONS[2]
  win_combination_4 = WIN_COMBINATIONS[3]
  win_combination_5 = WIN_COMBINATIONS[4]
  win_combination_6 = WIN_COMBINATIONS[5]
  win_combination_7 = WIN_COMBINATIONS[6]
  win_combination_8 = WIN_COMBINATIONS[7]

  
  win_index_1 = win_combination_1[0]
  win_index_2 = win_combination_1[1]
  win_index_3 = win_combination_1[2]
 
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
  
  
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return WIN_COMBINATIONS
  end