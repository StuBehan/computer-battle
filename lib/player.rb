class Player
  DEFAULT_HEALTH = 10
  attr_reader :name, :health

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def receive_damage
    @health -= 1
  end
end
