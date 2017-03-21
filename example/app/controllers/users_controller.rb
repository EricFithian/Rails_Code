class UsersController < ApplicationController
  def new
    render 'new.html.erb'
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
      flash[:success] = "You have successfully signed up!"
    else
    end

    redirect_to '/products'
  end
end
