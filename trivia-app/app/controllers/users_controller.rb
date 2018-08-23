class UsersController < ApplicationController
   before_action :authorized, except: [:new,:create, :index, :show]

   def index
     @users = User.all
   end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.create(users_params)
    if @user.valid?
      redirect_to login_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(users_params)
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)
    end

  end

  def destroy
    user = User.find(params[:id])
    user.delete

    redirect_to users_path
  end

  private
  def users_params
    params.require(:user).permit(:username, :password)
  end
end
