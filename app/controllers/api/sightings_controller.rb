class Api::SightingsController < ApplicationController
  def index
    @sightings = Sighting.all
    render 'index.json.jb'
  end

  def create
    @sighting = Sighting.create(
      user_id: params[:user_id],
      bird_name: params[:bird_name],
      session_id: params[:session_id]
    )
    render 'show.json.jb'
  end
end
