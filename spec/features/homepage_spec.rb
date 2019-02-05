require 'rails_helper'

feature 'User visits the homepage' do
  scenario 'successfully' do
    visit root_path 

    expect(page).to have_css 'h1', text: 'Setlister'
  end
end

feature 'The homepage allows the user to enter song title' do
  scenario 'successfully' do
    visit root_path
    fill_in('Title', with: 'Good Riddance')
    click_on 'Add song'

    expect(page).to have_css 'li', text: 'Good Riddance'
  end
end