require 'spec_helper'

feature "See Player2's HP" do
  scenario "show Player2's HP" do
    sign_in_and_play
    expect(page).to have_text('Name2: 60HP')
  end
end
