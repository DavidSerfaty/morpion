
require 'bundler'
Bundler.require

require_relative 'lib/board'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board_case'
require_relative 'lib/show'


puts "Salut et bienvenue dans notre super jeu de morpion !"
sleep (1.00)
puts "Le morpion nécessite 2 joueurs"
sleep (1.00)
puts "Voyons voir, quel est le nom du premier joueur ?"

new_game = Game.new
revange = "yes"

while revange == "yes"
  round = 0

  while round < 9
    system('clear')
    new_game.turn(round)
    status = new_game.game_status
    round+=1
    if status == "finish"
      round = 10
    end
  end
  new_game.game_end
  revange = new_game.new_round
end

puts "A plus dans le bus"
