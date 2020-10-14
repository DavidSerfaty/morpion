class Game < Player

  def initialize(player1, symbol1, player2, symbol2)
    @player1 = Player.new(player1, symbol1)
    @player2 = Player.new(player2, symbol2)
    @players = Array.new
    @players << @player1
    @players << @player2
    @new_board = Board.new
  end

  def is_still_ongoing?

  end

  def board_status
    @new_board.display_board
  end

  def cell_choice(choice)
    @new_board.cell_board(choice)
  end


  # def is_victory?
  #    if (A1 == A2 == A3 && A1.any?)||
  #     (B1 == B2 == B3 && B1.any?)||
  #     (C1 == C2 == C3 && C1.any||
  #     (A1 == B2 == C3 && A1.any?)||
  #     (A3 == B2 == C1 && A3.any?)||
  #     (A1 == B1 == C1 && C1.any?)||
  #     (A2 == B2 == C2 && C2.any?)||
  #     (A3 == B3 == C3 && C3.any?)
  #      true
  #    else
  #      false
  #    end
  #  end

end
