require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        dog = Puppy.new(params[:name], params[:breed], params[:age])
        @name = dog.name
        @age = dog.age
        @breed = dog.breed
        erb :display_puppy
    end

end
