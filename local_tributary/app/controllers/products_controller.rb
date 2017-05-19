class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    if params[:category]
      @image = "http://i.imgur.com/fX2nHnM.jpg"
      @products = Category.find_by(name: params[:category]).products
      @companies = Category.find_by(name: params[:category]).companies
    else
      @products = Product.all
      @companies = Product.all
    end
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

    image1 = ProductImage.new(url: params[:url])

    if product.save && image1.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      @companies = Company.all
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

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end
end
