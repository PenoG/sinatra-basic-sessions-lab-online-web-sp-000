require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    
    
  end
  
  get '/' do
  erb :index
  end
  
  post '/checkout' do
  @session = session
  session_secret = "password"
  
  session[:item] = params[:item]
  
  erb :checkout
  end
end