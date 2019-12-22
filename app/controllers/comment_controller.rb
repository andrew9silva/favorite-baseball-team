class CommentController < ApplicationController 

  
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
    team = @team = Team.find_by_id(params[:id])
    if params["content"].empty?
      redirect to '/teams/all_teams'
    end
    comment = Comment.create(:content => params["content"], :user_id => user.id, :team_id => team.id)
    redirect to '/comments'
  end 
  
end