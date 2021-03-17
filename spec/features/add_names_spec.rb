describe Battle do
  feature 'name entry', type: :feature do
    scenario "allows two players to enter their names" do
      visit '/'
      
      fill_in "player1", :with => "Jacob"
      fill_in "player2", :with => "Betsy"
      click_button "Submit"

      
      expect(page).to have_text("Jacob")
      expect(page).to have_text("Betsy")
    end
  end
end