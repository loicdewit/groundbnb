def signup
  visit('/')
  click_link('Sign Up')
  fill_in('user_email', with: 'test@email.com')
  fill_in('user_password', with: 'password123')
  fill_in('user_password_confirmation', with: 'password123')
  click_button('Create my account')
end
