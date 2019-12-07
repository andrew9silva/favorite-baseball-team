class UserController < ApplicationController
  get '/create_account' do 
    erb :'user/create_user'
  end
  
  post '/create_account' do 
    erb :'user/create_user'
  end
end