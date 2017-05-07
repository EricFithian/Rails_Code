class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      age: params[:age],
      zip_code: params[:zip_code],
      phone_number: params[:phone_number]
    )
    if user.save  
      session[:user_id] = user.id
      flash[:success] = 'You have successfully created an account!'
      redirect_to "/products"
    else
      render "new.html.erb"
    end
  end
end
