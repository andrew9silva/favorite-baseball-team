class UserController < ApplicationController
  
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