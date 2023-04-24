class AdminController < ApplicationController
  before_action :authenticate_admin

  def authenticate_admin
    puts "Authenticating admin"
    if helpers.logged_in?
      unless "Admin".eql?(helpers.current_user.username) or "admin".eql?(helpers.current_user.username)
        helpers.destroy
        message = "Invalid Request"
        redirect_to login_path, notice: message
      end
    else
      message = "Invalid Request"
      redirect_to login_path, notice: message
    end
  end

  def event_view
    @curr = Event.find_by_id(params[:id])
    session[:fall_back_url] = request.url
  end

end
