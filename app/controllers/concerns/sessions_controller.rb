class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You are logged in"
      redirect_to users_path(user)
    else
      flash.now[:danger] = "The email or password is uncorrect"
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path

  end

end