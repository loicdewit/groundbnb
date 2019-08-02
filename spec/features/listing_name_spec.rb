require 'rails_helper'

RSpec.describe 'Listing Features:' do
  it 'Allows a user to create a list, with a name and description.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign In')
    create_listing
    expect(current_path).to eq '/'
  end
end
