class OrdersController < ApplicationController
  def create
    recipe = Recipe.find_by(id: params[:recipe_id])
    price = params[:recipe_price].to_i
    quantity = params[:quantity].to_i
    tax_rate = 0.08875
    @order = Order.create(
        quantity: quantity,
        user_id: current_user.id,
        recipe_id: params[:recipe_id]
        subtotal: price * quantity,
        tax: (price * quantity) * tax_rate,
        total: (price * quantity) * (1 + tax_rate)
      )
    p order1.errors
    flash[:sucess] = "You just successfully ordered!"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
