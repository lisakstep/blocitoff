require 'rails_helper'

feature 'User creates LIST' do
  scenario 'Successfully' do
    visit new_list_path
    fill_in 'Title', with: 'Work'
    click_button 'Save'
    expect( page ).to have_content('Your List has been made.')
    expect( page ).to have_content('Work')
  end
end