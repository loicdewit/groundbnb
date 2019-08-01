require 'rails_helper'

RSpec.describe 'Sign In Features:' do
  it 'Allows a user to sign in, with an email and password.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign in')
  end
end
