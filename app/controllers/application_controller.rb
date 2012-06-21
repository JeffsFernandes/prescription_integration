class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticate_user!

  private

  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user)
  end

  def after_update_path_for(resource_or_scope)
      user_path(current_user)
  end
end