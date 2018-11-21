# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == "   " || board[index] == "  " || board[index] == " " || board[index] == "")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if position_taken?(board, win_combination[0]) == true
      if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]]
        return win_combination
      else
        false
      end
    else
    end
  end
  false
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  if won?(board) == true || full?(board) == true || draw?(board) == true
    true
  else
    false
  end
end

def winner(board)
  win = won?(board)
  won?(board)
  if won?(board) == true
    return win[0]
  else
    nil
  end
end
