class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :delete]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :new
    else
      flash[:notice] = "Invalid"
      redirect_to @user
    end
  end

  def show
  end

  def edit
  end

  def delete
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:password, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
