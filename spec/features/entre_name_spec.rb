require 'spec_helper'

feature "Input User names", :type => :feature do
  scenario "Users inputs their names" do
    visit('/')
    fill_in :player1_name, with: "Name1"
    fill_in :player2_name, with: "Name2"

    click_button "Let's Play"
    expect(page).to have_text('Name1 vs. Name2')
  end
end
