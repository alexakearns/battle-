feature 'Hit points' do
  scenario 'player can see opponents score' do
    sign_in_and_play
    expect(page).to have_content "Gina = 100 : Alexa = 100" 
  end
end