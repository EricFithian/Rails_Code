class UsersController < ApplicationController
  def new
    render 'index.html.erb'
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )

    if user.save 
      session[:user_id] = user.user_id
      flash[:success] = "You have successfully signed up for Homemade Orders!"
    else
      flash[:failure] = "Either your usename or password is incorrect :'("
    end

    redirect_to '/recipes'
  end
end
