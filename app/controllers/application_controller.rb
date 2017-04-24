require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end
  post '/results' do 
    @quiz = Quiz.new(params[:q1], params[:q2], params[:q3], params[:q4], params[:q5])
    erb :results
  end
end
