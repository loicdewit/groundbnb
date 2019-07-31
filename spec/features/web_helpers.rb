def signup
  visit('/')
  click_link('Sign Up')
  fill_in('user_email', with: 'test@email.com')
  fill_in('user_password', with: 'password123')
  click_button('Submit')
end
