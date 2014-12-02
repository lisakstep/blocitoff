require 'rails_helper'

feature 'Project manager creates ITEM' do
  scenario 'Successfully' do
    visit new_item_path
  end
end