describe Battle do
  feature 'the homepage', type: :feature do
    scenario 'says Testing Infrastructure Working' do
      visit '/'
      expect(page).to have_content('Testing infrastructure working!')
    end
  end
end
