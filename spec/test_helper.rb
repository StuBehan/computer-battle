def sign_in_and_play
  visit '/'
  fill_in 'player1', with: "Jacob"
  fill_in 'player2', with: "Betsy"
  click_button 'Submit'
end