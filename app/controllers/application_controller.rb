class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!,except: [:top,:about]
    def after_sign_in_path_for(resource)
      users_path(current_user)
    end

    def after_sign_out_path_for(resource)
      root_path
    end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

  def not_login_user_redirect
    unless user_signed_in?
        redirect_to new_user_session_path
    end
  end
end
