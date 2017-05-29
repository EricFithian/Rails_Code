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
    @subtotal = self.subtotal
    @tax = self.tax
    @total = self.total


    p @subtotal
    p @tax
    p @total
    @time = Time.now 
    @delivery = 30.minutes

    render 'show.html.erb'
  end
end
