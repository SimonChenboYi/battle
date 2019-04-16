require 'spec_helper'

feature 'infrastructure working' do
  scenario 'check the text on the page' do
    visit '/'
    expect(page).to have_text('infrastructure working!')
  end
end
