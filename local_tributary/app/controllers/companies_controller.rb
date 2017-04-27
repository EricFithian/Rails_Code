class CompaniesController < ApplicationController
  def index
  end

  def new
  end

  def create
    company = Company.new(
      name: params[:name],
      address: params[:address],
      image_description: params[:image_description],
      company_description: params[:company_description],
      phone_number: params[:phone_number],
      deliver_radius: params[:deliver_radius],
      website: params[:website],
      total_locations: params[:total_locations],
      email: params[:email],
      password_digest: params[:password_digest]    )
    if company.save  
      session[:company_id] = company.id
      flash[:success] = 'You have successfully created an account!'
      redirect_to "/companies"
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
