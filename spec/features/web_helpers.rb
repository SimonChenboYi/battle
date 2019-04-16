def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: "Name1"
  fill_in :player2_name, with: "Name2"

  click_button "Let's Play"
end
