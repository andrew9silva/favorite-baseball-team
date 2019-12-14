class TeamController < ApplicationController 
  
  get '/teams' do 
    erb :'teams/all_teams'
  end
  
end