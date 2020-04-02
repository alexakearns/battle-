def sign_in_and_play
  visit('/')
  fill_in 'first_name', with: 'Gina'
  fill_in 'second_name', with: 'Alexa'
  click_button 'go'
end 