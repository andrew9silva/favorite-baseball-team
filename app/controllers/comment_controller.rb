class CommentController < ApplicationController 

  get '/comments' do
    @comments = Comment.all 
    @user = current_user(session)
    erb :'comment/comments'
  end 
  
  get '/comment/new' do 
    erb :'/comment/new'
  end
  
  post '/comments' do 
    user = current_user(session)
    team = Team.find_by_id(params[:id])
    comment = Comment.create(:content => params['content'], :user_id => user.id, :team_id => team.id)
  end
  
  get '/comments/:id' do
    @comment = Comment.find_by_id(params[:id])
    erb :'comment/show_comment'
  end
  
  get '/comments/:id/edit' do 
    @comment = Comment.find_by_id(params[:id])
    if current_user(session).id != @comment.user_id
      redirect to '/comments'
    end
    erb :"comment/edit_comment"
  end
  
  patch '/comments/:id' do 
    @comment = Comment.find_by_id(params[:id])
    @comment.update(:content => params["content"])
    @comment.save
    
    redirect to "/comments/#{@comment.id}"
  end
  
  delete '/comments/:id/delete' do
    @comment = Comment.find_by_id(params[:id])
    @comment.destroy
    redirect to '/comments'
  end
  
end