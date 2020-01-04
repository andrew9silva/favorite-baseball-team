class TeamController < ApplicationController 
  
  get '/teams' do 
    @all_teams = Team.all
    erb :'teams/all_teams'
  end
  
  get '/teams/:id' do 
    if !is_logged_in?(session)
      redirect to '/login'
    end
    @team = Team.find_by_id(params[:id])
    erb :'teams/show_team'
  end
  
  post '/teams/show_team' do
    user = current_user(session)
    team = Team.find_by_id(params[:id])
    Comment.create(:content => params["content"], :user_id => user.id)
    "#{params[:content]}"
    redirect to '/comments'
  end
  

end