class ApplicationController < ActionController::Base

  protect_from_forgery
  rescue_from ActiveRecord::RecordNotFound, :with => :respond_to_not_found


  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to root_url
  end


  def respond_to_not_found(*types)
    respond_to do |format|
      format.html { redirect_to root_url, alert: '404: Not Found' }
    end
  end
end
