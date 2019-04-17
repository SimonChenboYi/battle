require 'spec_helper'

feature "Switch turns" do
  scenario "attack player2 then attack player1" do
    sign_in_and_play
    attack_and_finish_attack
    click_link "Attack"
    expect(page).to have_text('Name2 is attacking Name1!')
  end

  scenario "attack player2 then attack player1 and agian attack player2" do
    sign_in_and_play
    attack_and_finish_attack
    attack_and_finish_attack
    click_link "Attack"
    expect(page).to have_text('Name1 is attacking Name2!')
  end

end
