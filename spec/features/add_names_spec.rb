describe Battle do
  feature 'homepage', type: :feature do
    scenario 'allows two players to enter their names' do
      sign_in_and_play

      expect(page).to have_text('Jacob')
      expect(page).to have_text('Betsy')
    end
  end
end
