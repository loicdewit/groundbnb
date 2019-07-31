require 'rails_helper'

RSpec.describe 'welcome features' do
  it 'welcomes the user' do
    visit('/')
    expect(page).to have_content('Welcome')
  end
end
