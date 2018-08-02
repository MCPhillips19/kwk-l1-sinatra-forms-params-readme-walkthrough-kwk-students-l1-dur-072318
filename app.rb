require_relative 'config/environment'

class App < Sinatra::Base

  get '/dogs' do
    erb :dogs_form
  end

  # Add your post route and action below
post '/dogs' do
  @name=params[:name]
  @favorite_dog=params[:favorite_dog]
  "My name is #{@name}, and I want a #{@favorite_dog}"
  erb :dogs 
end
end
