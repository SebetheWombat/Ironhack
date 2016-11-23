class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def name_logic
    @current_user = User.find_by(id: session[:user_id])
    @name = @current_user ? @current_user.username : "Ironhacker"
  end

  def check_if_logged_in
     if session[:user_id] == nil
      flash[:need_to_login_msg] = "You need to login to see this page"
      redirect_to "/login"
    end
  end

  def check_if_admin
    check_if_logged_in
    if @current_user == nil
      name_logic
    end
    if @current_user && @current_user.role != "admin"
      flash[:admin_only] = "You must be an admin to view this page"
      redirect_to "/"
    end
  end
end
