class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :user_logged_in?

  def name_logic
    @current_user = User.find_by(id: session[:user_id])
    @name = @current_user ? @current_user.username : "Ironhacker"
  end

  def user_logged_in?
    session[:user_id]
  end
end
