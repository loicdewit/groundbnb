require 'rails_helper'

RSpec.describe 'Listing Features:' do
  it 'Allows a user to create a list, with a name and description.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign In')
    click_link('Create listing')
    fill_in('listing_name', with: 'test name')
    fill_in('listing_description', with: 'test description')
    click_button('Save')
    expect(current_path).to eq '/'
  end
end
