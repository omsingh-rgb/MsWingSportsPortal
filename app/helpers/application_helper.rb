module ApplicationHelper

  def logged_in?
    !!session[:user_id]
  end

  # Adds the current user record to the @current_user attribute of this class.
  def current_user
    if session[:user_id] == nil
      @current_user = nil
    else
      @current_user ||= User.find_by_id(session[:user_id])
    end
  end

  def destroy
    @user = nil
    session[:user_id] = nil
  end


end
