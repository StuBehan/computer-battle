describe Battle do
  feature 'the play page', type: :feature do
    scenario 'allows the player to see player hp' do
      sign_in_and_play
      expect(page).to have_content("10hp")
    end
  end
end
