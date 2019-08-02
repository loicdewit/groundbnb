require 'rails_helper'

RSpec.describe 'Listing Features:' do
  it 'Allows a user to view listings.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign In')
    create_listing
    expect(current_path).to eq '/'
    click_link('View listings')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('test name')
    expect(page).to have_content('test description')
    expect(page).to have_content(125)
  end
end
