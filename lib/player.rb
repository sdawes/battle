class Player

  DEFAULT_HIT_POINTS = 60
  ATTACK_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hit_points -= ATTACK_DAMAGE
  end

  def attack(other_player)
    other_player.receive_damage
  end
end
