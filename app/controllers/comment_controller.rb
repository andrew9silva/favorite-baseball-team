class CommentController < ApplicationController 

  get '/comments' do
    @comments = Comment.all 
    @user = current_user(session)
    erb :'comment/comments'
  end 
  
end