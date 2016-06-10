require_relative './player.rb'

class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = player1
  end

  def attack(other_player)
    other_player.reduce_hitpoints
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
