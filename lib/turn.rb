def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def turn(board)
  puts "Please enter 1-9:"
 input = gets
index = input_to_index(input)

if valid_move?(board, index) == true
 move(board, index, charachter = "X")
 elsif valid_move?(board, index) == false
 puts "Please enter 1-9"
 end
 
 
 
end



def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8)
    return true
  else
 end
end


def position_taken?(board, index)
if board[index] == " " || board[index] == ""
  return false
  elsif board[index] == nil
  return false
else
  return true
 end
end










def input_to_index(number)
 input = number.to_i
index = input - 1
return index
end


def move(array, index, charachter = "X")
array[index] = charachter
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


