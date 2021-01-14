require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
  @session = session
  session_secret = "password"
  
  erb :index
  end
end