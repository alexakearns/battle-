feature 'attack player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Gina attacked Alexa')
  end
end

feature 'player 1 can attack player 2 and reduce HP by 10' do
  scenario 'player 2 looses 10 HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Alexa has lost 10HP"
  end
end
