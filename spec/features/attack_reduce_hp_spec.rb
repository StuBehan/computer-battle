describe Battle do
  feature 'the play page', type: :feature do
    scenario 'displays the reduced hp following a player attack' do
      sign_in_and_play
      click_button "attack"
      click_button "Return"
      expect(page).to have_content("9hp")
    end
  end
end
