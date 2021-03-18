require './lib/player'

class Game

  attr_reader :player1, :player2, :active_player, :inactive_player, :gameover

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @active_player = @player1
    @inactive_player = @player2
    @gameover = false
  end

  def attack(player)
    player.receive_damage 
    if player.health <= 0 
      @gameover = true
    else
      next_turn(player)
    end
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
