# expects players to fill in their names (in a form), submit that form, and see those names on-screen

feature 'Entering players ' do
  scenario 'player enters name and sees on screen' do 
    sign_in_and_play
    expect(page).to have_content "Gina VS Alexa"
  end 
end 

=begin
feature 'Testing infrastructure' do 
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end 
end 
=end 

