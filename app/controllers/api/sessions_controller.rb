class Api::SessionsController < ApplicationController
  def index
    @sessions = Session.all
    render 'index.json.jb'
  end

  def show
    @session = Session.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @session = Session.create(
      user_id: params[:user_id],
      location: params[:location]
    )
    render 'show.json.jb'
  end
end
