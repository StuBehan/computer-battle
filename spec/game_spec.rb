require 'player'
require 'game'

describe Game do
  let(:game) { Game.new("James", "Bertie") }
  describe "on initialization it" do
    it "creates two new player instances" do
      expect(game.player1.name).to eq("James")
      expect(game.player2.name).to eq("Bertie")
    end
  end
  describe "#attack" do
    it "reduces the attacked players hp by 1" do
      expect { game.attack(game.player1) }.to change { game.player1.health }.by(-1)
    end
  end
end
