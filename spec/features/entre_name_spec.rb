require 'spec_helper'

feature "Input User names" do
  scenario "Users inputs their names" do
    sign_in_and_play
    
    expect(page).to have_text('Name1 vs. Name2')
  end
end
