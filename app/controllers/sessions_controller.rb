class SessionsController < ApplicationController

#  method takes you to the login form
  def new
  end

#  for a login situaton - as sessions#new is the login path
  def create
    student = Student.find_by(email: params[:email])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to student
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to login_path
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to login_path
  end




end
