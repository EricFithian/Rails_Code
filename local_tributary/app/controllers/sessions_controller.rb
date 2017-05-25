class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user 
      flash[:success] = 'You have successfully logged into this great site!'
      redirect_to '/products'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/login'
    end

    company = Company.find_by(email: params[:email])
    if company && company.authenticate(params[:password])
      session[:company_id] = company 
      flash[:success] = 'You have successfully logged into this great site!'
      redirect_to '/products'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/login'
    end
  end

  def destroy
    if session[:user_id] = nil
      flash[:success] = "You have successfully logged out!"
      redirect_to '/login'
    else
      redirect_to '/products/4'
    end
  end
end
