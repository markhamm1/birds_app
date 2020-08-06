class Api::ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
    render 'index.json.jb'
  end
  
  def create
    @connection.create(
      user_id: current_user.id,
      connection_id: params[:id]
    )
    @connection.create(
      user_id: params[:id],
      connection_id: current_user.id
    )
    render 'index.json.jb'
  end
end
