class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @user = User.find_by(email: params[:email])
    @company = Company.find_by(email: params[:email]) 

    if @user && @user.authenticate(params[:password])
      session[:current_user_id] = @user.id
      redirect_to '/products'
    elsif @company && @company.authenticate(params[:password])
      session[:current_company_id] = @company.id
      flash[:success] = 'You have successfully logged into this great site!'
      redirect_to '/products'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/login'
    end
  end

  def destroy
  if session[:company_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  elsif session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end
end
end

