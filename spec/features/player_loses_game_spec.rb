describe Battle do
  feature 'homepage' do
    scenario 'tells a player they have lost the game' do
      sign_in_and_play
      18.times do
        click_button 'Attack'
        click_button 'Return'
      end
      click_button 'Attack'
      expect(page).to have_content('Jacob has defeated Betsy!')
    end
  end
end
