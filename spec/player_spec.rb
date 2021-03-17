require 'player'

describe Player do
  let(:player) { Player.new("James") }
  it "has a instance variable called name" do
    expect(player.name).to eq("James")
  end
  it "has a health point value of 10" do
    expect(player.health).to eq(10)
  end
end