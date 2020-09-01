class Api::SessionsController < ApplicationController
  def index
    p params
    @sessions = Session.where(user_id: current_user.id)
    render 'index.json.jb'
  end

  def show
    @session = Session.find_by(id: params[:id])
    @sightings = Sighting.where(session_id: params[:id])
    render 'show.json.jb'
  end

  def create
    p params
    p "*" * 88
    p current_user.id
    p "*" * 88
    
    @session = Session.create(
      user_id: current_user.id,
      state: params[:state],
      county: params[:county],
    )
    params[:birds].each do |bird|
      @sighting = Sighting.create(
        user_id: current_user.id,
        bird_name: bird,
        session_id: @session.id
      )
    end
    
    render 'show.json.jb'
  end
end
