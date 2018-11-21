# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == "   " || board[index] == "  " || board[index] == " " || board[index] == "")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if (win_combination.all?{|position| position_taken?(board, position) == true}) == true
      if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]]
        return win_combination
      end
    else
      false
    end
  end
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
  if won?(board) == true

  else
    nil
  end
end
