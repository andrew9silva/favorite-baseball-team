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
    @team_comments = @team.comments
    erb :'teams/show_team'
  end
  

end