class ApplicationController < ActionController::Base
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def log_in(user)
    session[:user_id] = user.id
  end
end
