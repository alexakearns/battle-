feature 'Hit points' do
  scenario 'player can see opponents score' do
    visit('/')
    fill_in 'first_name', with: 'Gina'
    fill_in 'second_name', with: 'Alexa'
    click_button 'go'
    expect(page).to have_content "Gina = 100 : Alexa = 100" 
  end
end