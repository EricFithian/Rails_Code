class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def create
    carted_products = current_user.carted_products.where(status: 'carted')
    order = Order.new(
      user_id: current_user.id
    )
    if order.save
      carted_products.update_all(status: 'purchased', order_id: order.id)
      redirect_to "/orders/#{order.id}"
    else
      p order.errors.full_messages
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    @subtotal = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity && carted_order.status = 'carted'
        @subtotal += carted_order.quantity.to_i * carted_order.product.price
      end
    end

    @tax = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity && carted_order.status = 'carted'
        @tax += carted_order.quantity * carted_order.product.price * 0.0875
      end
    end

    @total = @tax + @subtotal


    p @subtotal
    p @tax
    p @total
    @time = Time.now + 30.minutes
    render 'show.html.erb'
  end
end
