# frozen_string_literal: true
class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      if @user.username == "Admin" or @user.username == "admin"
        redirect_to admin_dashboard_path
      else
        redirect_to unit_dashboard_path
      end
    else
      message = "Invalid credentials"
      redirect_to login_path, notice: message
    end
  end

  def destroy
    helpers.destroy

    message = "Successfully Logged out"
    redirect_to root_path , notice: message
  end
end