class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_admin, :profile) }
    devise_parameter_sanitizer.permit(:sign_up, keys: [:is_admin,:name, :profile])
  end
end
