describe Battle do
  feature 'homepage', type: :feature do
    scenario 'says Computer Battle!' do
      visit '/'
      expect(page).to have_content('Computer Battle!')
    end
  end
end
