class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save  
      session[:user_id] = user.id
      flash[:success] = 'You have successfully created an account!'
      redirect_to "/recipes"
    else
      render "new.html.erb"
    end
  end
end
