class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :set_layout, if: :devise_controller?

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_layout
    if request.path.include?("admins")
      "admin"
    else
      "application"
    end
  end
end
