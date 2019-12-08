class CommentController < ApplicationController 
  get '/create_comment' do
    erb :'comment/create_comment'
  end 
  
  post '/create_comment' do 
    erb :'comment/create_comment'
  end
end