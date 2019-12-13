class CommentController < ApplicationController 
  get '/create_comment' do
    erb :'comment/create_comment'
  end 
  
  post '/create_comment' do 
    erb :'comment/create_comment'
  end
  
  get '/comments' do 
    if !is_logged_in?(session)
      redirect to '/login'
    end
    @user = current_user(session)
    @comments = Comment.all 
    erb :'comment/comments'
  end
  
  post '/comments' do
    user = current_user(session)
    comment = Comment.create(:content => params["content"], :user_id => user.id)
  end 
  
end