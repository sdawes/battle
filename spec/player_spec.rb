require 'player'


describe Player do
  subject(:player) { described_class.new("Dave") }
  subject(:player2) { described_class.new("Mittens") }

  it 'returns the name of the player' do
    expect(player.name).to eq "Dave"
  end

  describe '#hitpoints' do
    it 'should have a default amount of HP' do
    expect(player.hitpoints). to eq Player::DEFAULT_HITPOINTS
    end
  end

  describe '#reduce_hitpoints' do
    it 'it should change by 10 when attacked' do
      expect{ player.reduce_hitpoints }
        .to change{player.hitpoints}.by -Player::DEFAULT_DAMAGE
    end
  end


end
