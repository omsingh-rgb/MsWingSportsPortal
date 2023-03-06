# frozen_string_literal: true
class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to unit_dashboard_path
    else
      message = "Make sure you have entered the username and password correctly"
      redirect_to login_path, notice: message
    end
  end

  def destroy
    @user = nil
    session[:user_id] = nil

    message = "Successfully Logged out"
    redirect_to root_path , notice: message
  end
end