require 'player'


describe Player do
  subject(:player) { described_class.new("Dave") }

  it 'returns the name of the player' do
    expect(player.name).to eq "Dave"
  end
end