class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :authorized_for

  def current_user
    if session[:student_id]
      Student.find(session[:student_id])
    else
      Student.new
    end
  end

  def logged_in?
    !!current_user.id
  end

  def authorized?
    if !logged_in?
      flash[:authorized] = "You aren't logged in"
      redirect_to login_path and return
    end
  end

  def authorized_for(student_id)
    if current_user.id != student_id.to_i
      flash[:authorized] = "You can't view a page that doesn't belong to you!"
      redirect_to current_user

    end
  end

end
