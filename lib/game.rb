require './lib/player'

class Game

  attr_reader :player1, :player2

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
  end

  def attack(player)
    player.receive_damage
  end
end
