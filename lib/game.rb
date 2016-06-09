require_relative './player.rb'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  def attack(other_player)
    other_player.reduce_hitpoints
  end

end
