require 'rails_helper'

RSpec.describe 'Sign In Features:' do
  it 'Allows a user to sign in, with an email and password.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    click_link('Sign In')
    fill_in('user_email', with: 'test@email.com')
    fill_in('user_password', with: 'password123')
    click_button('Sign in')
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
    expect(page).to have_content('Sign out')
    expect(page).not_to have_content('Sign in')
  end
end
