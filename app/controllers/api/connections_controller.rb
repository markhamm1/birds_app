class Api::ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
    render 'index.json.jb'
  end
  
  def create
    @connection1 = Connection.create(
      user_id: params[:user_id],
      connection_id: params[:connection_id]
    )
    @connection2 = Connection.create(
      user_id: params[:connection_id],
      connection_id: params[:user_id]
    )
    render 'show.json.jb'
  end
end
