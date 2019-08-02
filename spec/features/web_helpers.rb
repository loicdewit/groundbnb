def signup
  visit('/')
  click_link('Sign Up')
  fill_in('user_email', with: 'test@email.com')
  fill_in('user_password', with: 'password123')
  fill_in('user_password_confirmation', with: 'password123')
  click_button('Create my account')
end

def signin
  click_link('Sign In')
  fill_in('session_email', with: 'test@email.com')
  fill_in('session_password', with: 'password123')
  click_button('Sign in')
end

def create_listing
  click_link('Create listing')
  fill_in('listing_name', with: 'test name')
  fill_in('listing_description', with: 'test description')
  fill_in('listing_price_per_night', with: 125)
  click_button('Save')
end
