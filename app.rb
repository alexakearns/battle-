require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
    #'Testing infrastructure working!'
  end

post '/names' do
  session[:first_name] = params[:first_name]
  session[:second_name] = params[:second_name]
  redirect '/play'
end 

get '/play' do
  @first_name = session[:first_name]
  @second_name = session[:second_name]
  erb :play
end

  run! if app_file == $0

end

#Create a get '/' route that renders a index.erb view with a form