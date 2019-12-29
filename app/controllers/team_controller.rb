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
    Comment.create(:content => params["content"], :user_id => user.id, :team_id => team.id)
    "#{params[:content]}"
  end
  

end