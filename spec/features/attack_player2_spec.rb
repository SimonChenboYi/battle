require 'spec_helper'

feature "Attacking" do
  scenario "Attacking player2" do
    sign_in_and_play
    click_link "Attack"

    expect(page).to have_text('Name1 is attacking Name2!')
  end

  scenario "reduce player2's hp to 50" do
    sign_in_and_play
    click_link "Attack"
    click_link "Finish Attack"

    expect(page).to have_text('Name2: 50HP')
  end

end
