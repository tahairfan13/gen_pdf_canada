class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name])
  end

  def after_sign_in_path_for(resource)
    if resource.role == 0
      products_path
    elsif resource.role == 1
      marketing_index_path
    end
  end
end
