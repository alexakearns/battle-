class Player

  attr_reader :name, :player_score

  PLAYER_SCORE = 100

  def initialize(name)
    @name = name
    @player_score = PLAYER_SCORE
  end

  def attack(player)
    player.take_damage
  end

  def take_damage
    @player_score -= 10
  end
end
