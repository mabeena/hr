class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
	private
		def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
			devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :fname, :lname, :level, :role) }
			devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :fname, :lname, :level, :role) }
		end
		def employee_params
			params.require(:employee).permit(:email, :password, :password_confirmation, :fname, :lname, :level, :role)
		end

  	protected
  		def authenticate_user!
    		redirect_to root_path unless employee_signed_in?
 		end
end