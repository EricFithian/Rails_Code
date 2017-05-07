class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.carted_products.where(status: 'carted').count == 0
      redirect_to "/products"
    else
      @carted_products = current_user.carted_products.where(status: 'carted')
      render 'index.html.erb'
    end
  end

  def create
    carted_product = CartedProduct.new!(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: 'carted'
      )
    carted_product.save
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: 'removed')
    redirect_to '/carted_products'
  end
end