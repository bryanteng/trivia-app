class UsersController < ApplicationController
   #before_action :authorized, except: [:new, :index, :show]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to login_path
    else
      redirect_to new_user_path
    end
  end


  private
  def users_params
    params.require(:user).permit(:username, :password)
  end
end
