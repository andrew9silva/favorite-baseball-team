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
    if is_logged_in?(session)
      redirect to '/create_comment'
    end
   
    erb :'/user/login'
  end 
  
  post '/login' do
    
    user = User.find_by(:username => params["username"])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect to '/create_comment'
    else
    erb :'user/login'
  end 
  
  get '/create_account' do 
    if is_logged_in?(session)
      redirect to '/create_comment'
    end
    erb :'user/create_account'
  end
  
  post '/create_account' do 
    params.each do |label, input|
      if input.empty?
        redirect to 'user/create_account'
      end
    end
    user = User.create(:username => params["username"], :email => params["email"], :password => params["password"])
    session[:user_id] = user.id
    
    redirect to '/create_comment'
  end
 end
 
 get '/logout' do
   erb :'/user/logout'
 end 
 
 post '/logout' do
    if is_logged_in?(session)
      session.clear
      redirect to '/login'
    else
      redirect to '/'
    end
  end
end