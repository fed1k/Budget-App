class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    redirect_to user_groups_path(current_user)
  end
end
