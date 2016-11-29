class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :do_the_thing, if: :devise_controller?

  def do_the_thing
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
