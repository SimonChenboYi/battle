require 'spec_helper'

feature "See Player2's HP" do
  scenario "show Player2's HP" do
    visit('/')
    fill_in :player1_name, with: "Name1"
    fill_in :player2_name, with: "Name2"

    click_button "Let's Play"
    expect(page).to have_text('Name2: 60HP')
  end
end
