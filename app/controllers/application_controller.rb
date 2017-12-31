class ApplicationController < ActionController::Base
   before_action :load_user
   protect_from_forgery with: :exception

  def load_user
      @online = User.find(session[:user_id]) if session[:user_id]
  end

  def logout
    reset_session
  end
end
