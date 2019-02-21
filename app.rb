require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index 
  end 
  
  get '/new' do 
    
    erb :create_puppy
  end 
  
  post '/puppy' do 
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :display_puppy
  end
  
  # post '/puppy/:name' do 
  #   @name = params[:name]
  # erb :display_puppy
  # end 
  
  # post '/puppy/:breed' do 
  #   @breed = params[:breed]
  # erb :display_puppy
  # end 
  
  # post '/puppy/:age' do
  #   @age = params[:age]
  # erb :display_puppy
  # end 
  
end
