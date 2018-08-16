class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      # in a view, always use a path but in a controller, always use a url
      # a redirect must have a full url
      redirect_to root_url
    else
      render :new
    end
  end
end
