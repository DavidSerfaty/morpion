class Game
  attr_accessor :current_player, :status, :board, :players
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    puts "Joueur 1, quel est ton prénom ?"
    print ">"
    @player1 = Player.new(gets.chomp, "X")
    puts "Joueur 2, quel est ton prénom ?"
    print ">"
    @player2 = Player.new(gets.chomp, "O")
    @new_board = Board.new
    @status = "on going"
    @players = Array.new
    @players << @player1
    @players << @player2
    @current_player = @players[0]
  end

  def turn(round)
    @current_player = @players[round % 2]
    @new_board.show_board
    @new_board.play_turn(@current_player)
  end

  def game_status
    if @new_board.victory?
      @status = "finish"
    end
    return @status
  end

  def new_round
    puts "Voulez vous rejouer ? (Y / N)"
    print "> "
    revange = gets.chomp
    if revange == "Y"
      @new_board = Board.new
      @status = "On going"
      return "yes"
    else
      return "no"
    end
  end

  def game_end
    @new_board.show_board
    if @new_board.victory? == 1
      puts "Bravo #{@player1.name} tu as gagné"
    elsif @new_board.victory? == 2
      puts "Bravo #{@player2.name} tu as gagné"
    else
      puts "Match nul"
    end
  end
end
