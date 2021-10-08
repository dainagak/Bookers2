class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!,except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_current_user
    @current_user = User.find_by(id: session[:user.id])
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  private
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
  end

end
