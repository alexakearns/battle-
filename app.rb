require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
    #'Testing infrastructure working!'
  end

post '/names' do
  @first_name =params[:first_name]
  @second_name =params[:second_name]
  erb :play
end 

  run! if app_file == $0

end

#Create a get '/' route that renders a index.erb view with a form