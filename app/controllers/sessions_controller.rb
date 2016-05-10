class SessionsController < ApplicationController

  def new
    #@user = User.new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.admin?
        redirect_to admin_path
      else
        redirect_to myaccount_path, :notice => "Login Successful"
      #p "User login successful"
      #flash[:success] = 'Login Successful'
      end
    else
      #p "User login failure"
      redirect_to login_path, :notice => "Oops!! Invalid Username/Password. Please try again"
    end
  end  

  def destroy
    log_out
    redirect_to root_url
  end
end