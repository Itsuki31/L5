class UsersController < ApplicationController
  require "bcrypt"
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create_move
    render "create"
  end

  def create
    user = User.new(uid: params[:uid], pass: BCrypt::Password.create(params[:pass]))
    user.save
    session[:login_uid] = params[:uid]
    redirect_to users_index_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
  
end
