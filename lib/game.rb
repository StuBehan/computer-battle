require './lib/player'

class Game

  attr_reader :player1, :player2, :active_player, :inactive_player

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @active_player = @player1
    @inactive_player = @player2
  end

  def attack(player)
    player.receive_damage
    next_turn(player)
  end
  
  private

  def next_turn(player)
    if player == @player2
      @active_player = @player2
      @inactive_player = @player1
    else
      @active_player = @player1
      @inactive_player = @player2
    end
  end
end
