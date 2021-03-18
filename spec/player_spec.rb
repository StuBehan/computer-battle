require 'player'

describe Player do
  let(:player) { Player.new('James') }
  it 'has a instance variable called name' do
    expect(player.name).to eq('James')
  end
end
