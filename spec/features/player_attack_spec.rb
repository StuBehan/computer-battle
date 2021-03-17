describe Battle do
  feature 'the play page', type: :feature do
    scenario 'allows the player to attack a player' do
      sign_in_and_play
      click_button "attack"
      expect(page).to have_content("Jacob attacks Betsy")
    end
  end
end
