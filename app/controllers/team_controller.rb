class TeamController < ApplicationController 
  
  get '/teams' do 
    @all_teams = Team.all
    erb :'teams/all_teams'
  end
  
end