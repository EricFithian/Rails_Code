class ProductsController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
  end

  def create
    @product = Product.create(
      user_id: current_user,
      name: params[:name],
      category: params[:category],
      tags: params[:tags],
      company_id: params[:company_id],
      delivery_time: params[:delivery_time],
      price: params[:price]
    )
    if product.save
      Rails.logger.info(@product.errors.inspect) 
      flash[:sucess] = "You just created a product!"
      redirect_to "/products/#{@product.id}"
    else
      render 'edit.html.erb'
    end
  end

  def show
    @product = Product.find_by!(id: params[:id])
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = product.destroy
    redirect_to "/products/#{@product.id}"
  end
end
