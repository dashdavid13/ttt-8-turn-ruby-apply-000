def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def position_taken?(board, index)
   if (board[index] == " ") 
      return false 
   elsif (board[index] == "")
      return false 
   elsif (board[index] == nil)
      return false 
   else 
      return true
   end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) 
 input_to_index=user_input.to_i - 1
end


def move(board,index,player="X")
  board[index] = player

end

def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input_user)
  if valid_move?(board, index)
    turn_count(board)
    current_player(board)
    move(board, index, current_player)
    display_board(board)
  else
    turn(board)
  end
end

