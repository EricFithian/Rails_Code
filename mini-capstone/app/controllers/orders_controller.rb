class OrdersController < ApplicationController
  def index
    @recipes = Recipe.all

    @subtotal = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity 
        @subtotal += carted_order.quantity * carted_order.recipe.price
      end
    end

    @tax = 0
    current_user.carted_products.each do |carted_order|
      if carted_order.quantity 
        @tax += carted_order.quantity * carted_order.recipe.price * 0.0875
      end
    end

    @total = @tax + @subtotal
    render 'index.html.erb'
  end

  def create
    @orders = Recipe.find_by(id: params['recipe_id'])

    @orders = Order.create(
        user_id: current_user.id
      )
    redirect_to "/orders"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
