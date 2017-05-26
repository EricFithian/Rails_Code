class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subtotal = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity > 0 && carted_order.status == 'carted'
        @subtotal += carted_order.quantity * carted_order.product.price
      end
    end

    @tax = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity && carted_order.status == 'carted'
        @tax += carted_order.quantity * carted_order.product.price * 0.0875
      end
    end

    @total = @tax + @subtotal
    
    if current_user.carted_products.where(status: 'carted').count == 0
      redirect_to "/products"
    else
      @carted_products = current_user.carted_products.where(status: 'carted')
      render 'index.html.erb'
    end
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      company_id: params[:company_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: 'carted'
      )
    carted_product.save
    p carted_product.errors.full_messages
    p params[:product_id]
    p params[:company_id]
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: 'removed')
    redirect_to '/carted_products'
  end
end