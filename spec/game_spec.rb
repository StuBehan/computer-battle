require 'game'

describe Game do
  subject(:game) { described_class.new("James", "Caroline") }
  describe "on initialization it" do
    it "creates two new player instances" do
      expect(game.player1.name).to eq("James")
      expect(game.player2.name).to eq("Caroline")
    end
  end
  describe "#attack" do
    it "reduces the attacked players hp by 1" do
      expect { game.attack(game.player1) }.to(change { game.player1.health })
    end
  end
end
