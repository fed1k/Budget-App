# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  private

  def authenticate_user!
    if user_signed_in?
      super
    elsif request.original_fullpath != splash_path
      redirect_to splash_path
    end
  end
end
