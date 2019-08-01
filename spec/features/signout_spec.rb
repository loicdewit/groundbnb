require 'rails_helper'

RSpec.describe 'Sign Out Features:' do
  it 'Allows a user to sign out.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign In')
    click_link('Sign Out')

    expect(current_path).to eq '/'
    expect(page).to have_content('Sign In')
    expect(page).not_to have_content('Sign Out')
  end
end
