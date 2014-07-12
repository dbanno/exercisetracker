class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :update_sanitized_params, if: :devise_controller?
  protect_from_forgery with: :exception
	#include SessionsHelper
	
	protected
		  def update_sanitized_params
			devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name,:email,:password_confirmation, :current_password,:password,:timezone)}
		  end
end
