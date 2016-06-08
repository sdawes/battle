require 'player'

describe Player do
  subject(:player) { Player.new("Steve") }

  it 'returns players name' do
    expect(player.name).to eq("Steve")
  end
end
