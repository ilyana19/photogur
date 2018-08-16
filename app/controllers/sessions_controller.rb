class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to pictures_url, notice: "Logged in!"
    else
      render :new # => go back to the form!
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to pictures_url, noticed: "Logged out!"
  end
end
