class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound do |exception|
    redirect_to root_url, alert: 'I\'m not saying it never existed. I\'m just saying that it doesn\'t exist now.'
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_url, alert: exception.message
  end
end
