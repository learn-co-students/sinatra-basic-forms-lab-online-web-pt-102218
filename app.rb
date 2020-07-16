require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    @name, @age, @breed = params[:name], params[:age], params[:breed]
    erb :display_puppy
  end

end
