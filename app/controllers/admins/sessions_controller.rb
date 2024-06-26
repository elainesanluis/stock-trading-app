# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    admin_signed_in? ? admin_path : dashboard_index_path
  end
  
  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  

end
