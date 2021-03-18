describe Battle do
  feature 'homepage' do
    scenario 'switches players after each turn' do
      sign_in_and_play

      click_button 'ttack'
      click_button 'Return'
      expect(page).to have_content('Betsy\'s turn!')
    end
  end
end
