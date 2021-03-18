require 'player'

describe Player do
  subject(:player) { described_class.new('James') }
  it 'has a instance variable called name' do
    expect(player.name).to eq('James')
  end
end
