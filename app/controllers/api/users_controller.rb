class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end
  
  def create
    @user = User.create(
      email: params[:email],
      username: params[:username],
      password_digest: params[:password]
    )
    render 'show.json.jb'
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
