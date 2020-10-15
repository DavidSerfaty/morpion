class Show

  def show_board(board)
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}   ||   1 | 2 | 3 "
    puts "-----------        ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}   ||   4 | 5 | 6 "
    puts "-----------        ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}   ||   7 | 8 | 9 "
  end

end
