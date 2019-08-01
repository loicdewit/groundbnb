require 'rails_helper'

RSpec.describe 'Sign Up Features:' do
  it 'Allows a user to sign up, with an email and password.' do
    signup
    expect(page.status_code).to eq(200)
    expect(current_path).to eq '/'
  end
end
