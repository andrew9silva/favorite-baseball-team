class TeamController < ApplicationController 
  
  get '/teams' do 
    @all_teams = Team.all
    erb :'teams/all_teams'
  end
  
  get '/teams/:id' do 
    @team = Team.find_by_id(params[:id])
    erb:'teams/show_team'
  end
end