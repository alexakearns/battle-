require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
    #'Testing infrastructure working!'
  end

post '/names' do
  $player_1 = Player.new(params[:first_name])
  $player_2 = Player.new(params[:second_name])
  redirect '/play'
end 

get '/play' do
  @first_name = $player_1.name
  @second_name = $player_2.name
  @player_1_score = 100
  @player_2_score = 100
  erb :play
end

get '/attack' do
  @first_name = $player_1.name
  @second_name = $player_2.name
  erb :attack
end 

  run! if app_file == $0

end

#Create a get '/' route that renders a index.erb view with a form