def sign_up
  visit '/users/sign_up'
  password = 'samplepassword'
  fill_in 'Email', with: 'testy@example.com'
  fill_in 'user_password', with: password
  fill_in 'Password confirmation', with: password
  click_button 'Sign up'
end
