class Board
  attr_accessor :board

  def initialize
    @board = Array.new
    for i in 1..9
      @board << BoardCase.new(i)
    end
  end

  def show_board
    puts
    puts " #{@board[0].marker} | #{@board[1].marker} | #{@board[2].marker}   ||   1 | 2 | 3 "
    puts "-----------      ----------- "
    puts " #{@board[3].marker} | #{@board[4].marker} | #{@board[5].marker}   ||   4 | 5 | 6 "
    puts "-----------      ----------- "
    puts " #{@board[6].marker} | #{@board[7].marker} | #{@board[8].marker}   ||   7 | 8 | 9 "
    puts
  end

  def play_turn(current_player)
    puts "#{current_player.name} (#{current_player.marker}), c'est à toi de jouer : "
    choice = gets.chomp.to_i
    numbers = [1,2,3,4,5,6,7,8,9]
    until numbers.include?(choice) && board[choice-1].marker == " " do
      puts "Retentes"
      choice = gets.chomp.to_i
    end
    board[choice-1].marker = "#{current_player.marker}"
  end

  def victory?
    win_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    victory = nil
    win_combos.each do |combo|
      if @board[combo[0]].marker == 'X' && @board[combo[1]].marker == 'X' && @board[combo[2]].marker == 'X'
        victory = 1
      elsif @board[combo[0]].marker == 'O' && @board[combo[1]].marker == 'O' && @board[combo[2]].marker == 'O'
        victory = 2
      end
    end
    victory
  end

end
