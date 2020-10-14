
require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/board'
require_relative 'lib/board_case'


# print "Nom du joueur n°1 : "
player1 = "Kiki"
# print "Symbole du joueur n°1 : "
symbole1 = "X"

# print "Nom du joueur n°2 : "
player2 = "Ugo"
# print "Symbole du joueur n°1 : "
symbole2 = "O"

# player1 = Player.new(player1, symbole1)
# player2 = Player.new(player2, symbole2)

game = Game.new(player1, symbole1, player2, symbole2)
#
# # binding.pry
game.show_state
game.board_status
choice = gets.chomp.to_i
game.cell_choice(choice)
game.board_status
choice = gets.chomp.to_i
game.cell_choice(choice)
game.board_status

# player2.show_state
#
# player1.use_token
# player2.use_token
#
# player1.show_state
# player2.show_state
# game.show_state

# board = Board.new
# board.display_board
# play = gets.chomp.to_s.upcase
# board.cell_board(play)
# board.display_board
