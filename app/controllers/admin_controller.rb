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

  def password_change
    user = User.where(username: params[:username])
    user.update(password: params[:password], password_confirmation: params[:password])
    redirect_to admin_userc_path, message: "password changed"
  end

  def create_user
    User.create(username: params[:username],
                password: params[:password],
                password_confirmation: params[:password],
                unit: Unit.where(id: params[:uid]).first)
    redirect_to admin_userc_path, message: "user created"
  end

  def user_delete
    User.all.where(id: params[:uid]).first.delete
    redirect_to admin_userc_path, message: "user deleted"
  end

end
