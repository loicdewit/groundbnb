require 'rails_helper'

RSpec.describe 'Sign Up Features:' do
  it 'Allows a user to sign up, with an email and password.' do
    visit('/')
    click_link('Sign Up')
    fill_in('user_email', with: 'test@email.com')
    fill_in('user_password', with: 'password123')
    click_button('Submit')
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
  end
end
