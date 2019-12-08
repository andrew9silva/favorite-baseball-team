class CommentController < ApplicationController 
  get '/create_comment' do
    erb :'comment/create_comment'
  end 
  
  post '/create_comment' do 
    erb :'comment/create_comment'
  end
  
  get '/comments' do 
    @comments = Comment.all 
    erb :'comment/comments'
  end
end