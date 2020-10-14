class Board < Game
  attr_accessor :board

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}   ||   1 | 2 | 3 "
    puts "-----------        ----------- "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}   ||   4 | 5 | 6 "
    puts "-----------        ----------- "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}   ||   7 | 8 | 9 "
  end

  def cell_board(choice)
    @board[choice-1] = "X"

    # case play
    # when "B2"
    #   @B2 = player.symbol
    # when "A1"
    #   @A1 = "X"
    #
    # end
  end

end
