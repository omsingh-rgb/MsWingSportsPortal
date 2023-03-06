class ApplicationController < ActionController::Base

  def authenticate
    unless helpers.logged_in?
      message = "Invalid Request"
      redirect_to login_path, notice: message
    end
  end

end
