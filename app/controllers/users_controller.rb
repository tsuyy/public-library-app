class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @users = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
