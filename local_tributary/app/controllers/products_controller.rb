class ProductsController < ApplicationController
  before_action :authenticate_company_admin!, except: [:index, :new, :create, :show]

  def index
    if params[:category]
      @products = Category.find_by(name: params[:category]).products
      @companies = Category.find_by(name: params[:category]).companies
    else
      @products = Product.all
      @companies = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    p params[:name]
    @product = Product.new(
      company_id: current_company.id,
      name: params[:product][:name],
      category: params[:product][:category],
      tags: params[:product][:tags],
      delivery_time: params[:product][:delivery_time],
      price: params[:product][:price],
      pictures: params[:product][:pictures]
    )

    if @product.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      p @product.errors.full_messages
      p @product
      render 'new.html.erb'
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
    @companies = Company.all
    if @product.update(
         name: params[:name],
         description: params[:description],
         price: params[:price]
       )
      flash[:success] = "Product Updated"
      redirect_to "/products/#{@product.id}"
    else
      render 'edit.html.erb'
    end
  end

  def product_params
    params.require(:product).permit(:name, pictures: [])
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/products"
  end
end
