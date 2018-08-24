class SessionsController < ApplicationController

  def new
  end

  def create
    if User.find_by(username: params[:username]).blank?
      flash[:error] = "The username you’ve entered doesn’t match any account."
      redirect_to login_path
    else
      @user = User.find_by(username: params[:username])

      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to categories_path
      else
        flash[:error] = "The password you’ve entered is incorrect."
        redirect_to login_path
      end
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end

end
