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
  
  get '/teams/comments' do
    erb :'teams/show_team'
  end
  
  post '/teams/comments' do 
    
  end
end