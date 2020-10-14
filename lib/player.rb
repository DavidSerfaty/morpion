class Player
  attr_accessor :name, :symbol, :tokens

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def show_state # methode pour connaitre l'état de santé du joueur
    @players.each do |player|
      puts "#{player.name} joue les #{player.symbol}"
    end
  end

  def player_token
    

  end


end
