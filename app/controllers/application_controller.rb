class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def authenticate_user!
    redirect_to users_sign_up_path unless helpers.logged?
  end
end
