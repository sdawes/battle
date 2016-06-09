require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:other_player) { double(:other_player, reduce_hitpoints: 50, hitpoints: 50) }

  describe '#attack' do
    it 'can attack another player' do
      expect(game.attack(other_player)).to eq(other_player.hitpoints)
    end
  end
end
