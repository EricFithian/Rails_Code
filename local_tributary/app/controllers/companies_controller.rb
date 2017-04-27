class CompaniesController < ApplicationController
  def new
  end

  def create
    company = Company.new(
      name: params[:name],
      email: params[:email],
      password: params[:password_digest],
      password_confirmation: params[:password_confirmation]
    )
    if company.save  
      session[:company_id] = company.id
      flash[:success] = 'You have successfully created an account!'
      redirect_to "/recipes"
    else
      render "new.html.erb"
    end
  end

  def show
    @company = Company.find_by!(id: params[:id])
  end

  def edit
    @company = Company.find_by(id: params[:id])
  end

  def update
    @company = Company.find_by(id: params[:id])
    redirect_to "/companys/#{@company.id}"
  end

  def destroy
    @company = company.destroy
    redirect_to "/companys/#{@company.id}"
  end
end
