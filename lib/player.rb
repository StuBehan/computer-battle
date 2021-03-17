class Player 

  attr_accessor :health

  attr_reader :name

  def initialize(name)
    @name = name
    @health = 10
  end
end