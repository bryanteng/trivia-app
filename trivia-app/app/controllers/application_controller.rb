class ApplicationController < ActionController::Base
  helper_method :is_loggedin?, :current_user
  def current_user
    # byebug
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def is_loggedin?
    !!current_user
  end

  def authorized
    redirect_to new_user_path unless session[:user_id]
  end

end
