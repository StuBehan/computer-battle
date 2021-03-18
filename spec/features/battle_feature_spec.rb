describe Battle do
  feature 'homepage', type: :feature do
    scenario 'says Testing Infrastructure Working' do
      visit '/'
      expect(page).to have_content('Testing infrastructure working!')
    end
  end
end
