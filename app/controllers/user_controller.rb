class UserController < ApplicationController
  
  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end
  
  get "/" do
    erb :welcome
  end
  
  get '/login' do
    erb :'user/login'
  end 
  
  post '/login' do
    erb :'user/login'
  end 
  
  get '/create_account' do 
    erb :'user/create_user'
  end
  
  post '/create_account' do 
    erb :'user/create_user'
  end
  
  
end