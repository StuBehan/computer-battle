describe Battle do
  feature 'play page', type: :feature do
    scenario 'displays the reduced hp following a player attack' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Return'
      click_button 'Attack'
      click_button 'Return'
      expect(page).to have_no_content('10hp')
    end
  end
end
