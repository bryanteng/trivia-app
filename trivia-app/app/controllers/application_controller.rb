class ApplicationController < ActionController::Base
  helper_method :is_loggedin?
  def current_user
    if @user
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
