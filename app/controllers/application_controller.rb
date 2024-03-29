class ApplicationController < ActionController::Base
  # devise user authentication
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email)
    end
  end
end
